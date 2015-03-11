class RemoveColumnAdvertising < ActiveRecord::Migration
  def change
     remove_column :industries, :advertising
  end
end
