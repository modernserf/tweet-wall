class AddApprovedToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :approved, :boolean

  end
end
