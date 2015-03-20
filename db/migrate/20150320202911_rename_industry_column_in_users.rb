class RenameIndustryColumnInUsers < ActiveRecord::Migration
  def change
    rename_column :users, :job_location_id, :location_id
  end
end
