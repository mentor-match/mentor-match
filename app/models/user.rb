class User < ActiveRecord::Base
  attr_reader :filter_results
 has_secure_password

 validates :name, :email, presence: true

 belongs_to :location
 belongs_to :industry
 belongs_to :availability

 has_many :users_skills, class_name: UsersSkill
 has_many :skills, :through => :users_skills

 belongs_to :role


end
