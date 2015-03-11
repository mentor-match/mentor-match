class RemoveColumnBusiness < ActiveRecord::Migration
  def change
     remove_column :industries, :business
  end
end
