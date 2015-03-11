class RemoveColumnDesign < ActiveRecord::Migration
  def change
     remove_column :industries, :design
  end
end
