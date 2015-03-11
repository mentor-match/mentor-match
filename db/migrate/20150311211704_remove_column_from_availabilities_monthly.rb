class RemoveColumnFromAvailabilitiesMonthly < ActiveRecord::Migration
  def change
     remove_column :availabilities, :monthly
  end
end
