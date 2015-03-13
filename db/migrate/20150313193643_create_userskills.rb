class CreateUserskills < ActiveRecord::Migration
  def change
    create_table :userskills do |t|

      t.timestamps null: false
    end
  end
end
