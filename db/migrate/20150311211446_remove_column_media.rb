class RemoveColumnMedia < ActiveRecord::Migration
  def change
     remove_column :industries, :media
  end
end
