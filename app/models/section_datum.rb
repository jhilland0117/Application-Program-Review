class SectionDatum < ActiveRecord::Base
	belongs_to :apr_report
	belongs_to :section


	validates_presence_of :data

end
