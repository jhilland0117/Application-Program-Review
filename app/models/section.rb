class Section < ActiveRecord::Base
	has_many :section_data
	belongs_to :criterion


	validates_associated :section_data
    validates_presence_of :section_number, :description, :name

end
