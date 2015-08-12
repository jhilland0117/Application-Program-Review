class Pdf < ActiveRecord::Base
	belongs_to :apr_report


	validates :apr_report, acceptance: true
    validates_presence_of :url, :temp_url
end
