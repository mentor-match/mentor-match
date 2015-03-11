class RemoveColumnFromAvailabilitiesBiAnnually < ActiveRecord::Migration
  def change
     remove_column :availabilities, :biannually
  end
end
