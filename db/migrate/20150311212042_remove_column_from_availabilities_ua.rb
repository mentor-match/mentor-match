class RemoveColumnFromAvailabilitiesUa < ActiveRecord::Migration
  def change
     remove_column :availabilities, :unavailable
  end
end
