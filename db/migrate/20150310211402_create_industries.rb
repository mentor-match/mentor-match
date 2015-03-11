class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.string :tech
      t.string :information_technology
      t.string :design
      t.string  :marketing
      t.string  :business
      t.string :public_relations
      t.string :media
      t.string :finance
      t.string :accounting
      t.string :human_resources
      t.string :advertising

      t.timestamps null: false
    end
  end
end
