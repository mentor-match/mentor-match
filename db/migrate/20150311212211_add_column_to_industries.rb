class AddColumnToIndustries < ActiveRecord::Migration
  def change
    add_column :industries, :name, :string
  end
end
