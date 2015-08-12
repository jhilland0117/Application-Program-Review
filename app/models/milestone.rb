class Milestone < ActiveRecord::Base
	belongs_to :apr_report

	#validates_associated :apr_reports
    validates_presence_of :name

end
