class RemoveColumnPr < ActiveRecord::Migration
  def change
     remove_column :industries, :public_relations
  end
end
