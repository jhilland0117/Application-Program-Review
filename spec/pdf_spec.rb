#PDF RSpec tests

require 'spec_helper'

describe Pdf do
    before(:each) do
        @pdf = Pdf.new(valid_attributes)
    end
    
    it "should not be valid without a url" do
        @pdf.url = ''
        @pdf.should_not be_valid
    end
    
    it "should not be valid without a temporary url" do
        @pdf.temp_url = ''
        @pdf.should_not be_valid
    end
    
    it "should be valid" do
        @pdf.should be_valid
    end
    
    def valid_attributes
      {:url => 'test apr report name', :temp_url => 'test temporary url'}
    end
end
