class UserRole < ActiveRecord::Base
	has_many :users


	validates_associated :users

    validates_presence_of :role
end
