class RemoveColumnFromAvailabilitiesQaurtely < ActiveRecord::Migration
  def change
     remove_column :availabilities, :quartely
  end
end
