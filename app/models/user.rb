class User < ActiveRecord::Base
 has_secure_password

 validates :name, :email, presence: true

 serialize :skills

 has_one :location
 has_one :industry
 has_one :availability

 has_many :userskills
 has_many :skills, :through => :userskills

 belongs_to :role
end
