class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
     t.string :name, null: false
     t.string :title
     t.string :email, null: false
     t.integer :years_experience
     t.integer :mentor_type
     t.integer :job_location_id
     t.string :home_origin
     t.string :password_digest, null: false
     t.string :session_token
     t.text   :bio
     t.text    :fun_fact
     t.attachment :avatar
     t.integer  :availability_id
     t.integer   :industry_id
     t.text :skill_id

     t.timestamps null: false
   end
  end
end
