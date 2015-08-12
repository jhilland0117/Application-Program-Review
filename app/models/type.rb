class Type < ActiveRecord::Base
	has_many :apr_reports


	validates_associated :apr_reports

    validates_presence_of :name
end
