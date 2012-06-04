class AddHashtagToUsers < ActiveRecord::Migration
  def change
    add_column :users, :hashtag, :string

  end
end
