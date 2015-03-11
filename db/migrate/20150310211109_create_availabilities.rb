class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.string :monthly
      t.string :quartely
      t.string :yearly
      t.string :biannually
      t.string :unavailable

      t.timestamps null: false
    end
  end
end
