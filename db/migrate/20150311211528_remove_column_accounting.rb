class RemoveColumnAccounting < ActiveRecord::Migration
  def change
     remove_column :industries, :accounting
  end
end
