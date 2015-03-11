class AddColumnToAvailabilities < ActiveRecord::Migration
  def change
     add_column :availabilities, :name, :string
  end
end
