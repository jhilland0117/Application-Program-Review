class Criterion < ActiveRecord::Base
	has_many :sections

	validates_associated :sections

    validates_presence_of :name, :description, :criterion_number
end
