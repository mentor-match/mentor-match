class ChangeIndustriesDataType < ActiveRecord::Migration
  def change

    change_column :users, :industry_id, :text
  end
end
