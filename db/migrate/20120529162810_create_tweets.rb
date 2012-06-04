class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :id_str
      t.string :name
      t.string :user_name
      t.string :img_url

      t.timestamps
    end
  end
end
