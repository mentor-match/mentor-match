class DropTableUserSkills < ActiveRecord::Migration
  def change
    drop_table :userskills
  end
end
