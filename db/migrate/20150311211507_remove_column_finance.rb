class RemoveColumnFinance < ActiveRecord::Migration
  def change
     remove_column :industries, :finance
  end
end
