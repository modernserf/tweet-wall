class AddDeletesToUser < ActiveRecord::Migration
  def change
    add_column :users, :delete_pending, :boolean

    add_column :users, :delete_approved, :boolean

  end
end
