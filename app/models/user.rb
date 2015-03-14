class User < ActiveRecord::Base
 has_secure_password

 validates :name, :email, presence: true

 serialize :skills

 belongs_to :location
 belongs_to :industry
 belongs_to :availability

 has_many :userskills
 has_many :skills, :through => :userskills

 belongs_to :role
end
