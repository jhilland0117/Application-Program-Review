#AprReport RSpec tests

require 'spec_helper'

describe AprReport do
  before(:each) do
      @apr_report = AprReport.new(valid_attributes)
  end
  
  it "should not be valid without a name" do
      @apr_report.name = ''
      @apr_report.should_not be_valid
  end
  
  it "should be valid" do
      @apr_report.should be_valid
  end
  
  def valid_attributes
    {:name => 'test apr report name'}
  
  end
end


