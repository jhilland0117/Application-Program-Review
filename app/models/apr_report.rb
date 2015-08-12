class AprReport < ActiveRecord::Base
	belongs_to :unit
	belongs_to :type
	has_many :milestones
	has_many :section_data
	has_one :pdf
	has_and_belongs_to_many :users
    

    validates_associated :milestones, :section_data, :pdf, :users
    validates_presence_of :name
	
end
