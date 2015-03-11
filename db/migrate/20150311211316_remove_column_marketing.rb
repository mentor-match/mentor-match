class RemoveColumnMarketing < ActiveRecord::Migration
  def change
     remove_column :industries, :marketing
  end
end
