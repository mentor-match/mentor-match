class DropMentorTypeColumnFromUsersTable < ActiveRecord::Migration
  def change
  	remove_column :users, :mentor_type
  end
end
