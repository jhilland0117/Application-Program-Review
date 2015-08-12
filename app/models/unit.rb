class Unit < ActiveRecord::Base
	has_many :apr_reports
	has_and_belongs_to_many :users

	validates_presence_of :unit_name

end
