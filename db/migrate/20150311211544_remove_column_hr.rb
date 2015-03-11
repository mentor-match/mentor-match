class RemoveColumnHr < ActiveRecord::Migration
  def change
     remove_column :industries, :human_resources
  end
end
