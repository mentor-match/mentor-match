class RemoveColumnTech < ActiveRecord::Migration
  def change
    remove_column :industries, :tech
  end
end
