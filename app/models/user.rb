class User < ActiveRecord::Base

  def loadTweets
    
    if (Tweet.last) 
      last_id = Tweet.last.id_str
    else 
      last_id = "0"
    end
    
    if !self.hashtag 
      self.hashtag ="default"
    end
    
    Twitter.search(self.hashtag, since_id: last_id.to_i, rpp: 10).reverse.each do |i|
      Tweet.create(id_str: i.id.to_s, name: i.from_user_name, user_name: i.from_user,
      img_url: i.profile_image_url, text: i.text, approved: self.autopost)
    end
    
  
  end


end
