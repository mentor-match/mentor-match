class RemoveColumnIt < ActiveRecord::Migration
  def change
     remove_column :industries, :information_technology
  end
end
