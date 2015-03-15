class ChangeSkillIdToText < ActiveRecord::Migration
  def change
    change_column :users, :skill_id, :text
  end
end
