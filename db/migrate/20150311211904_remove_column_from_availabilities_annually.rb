class RemoveColumnFromAvailabilitiesAnnually < ActiveRecord::Migration
  def change
    remove_column :availabilities, :yearly
  end
end
