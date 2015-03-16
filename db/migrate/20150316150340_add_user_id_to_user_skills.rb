class AddUserIdToUserSkills < ActiveRecord::Migration
  def change
    rename_table :user_skills, :users_skills
  end
  # add_index :users_skills, [:user_id, :skill_id], unique: true
end
