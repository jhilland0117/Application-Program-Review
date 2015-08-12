#RSpec tests for section data

require 'spec_helper'

describe SectionData do
  before(:each) do
        @section_data = Milestone.new(valid_attributes)
  end
    
  it "should not be valid without data"
    @section_data.data = ''
    @section_data.should_not be_valid
  end

  it "should be valid" do
    @section_data.should be_valid
  end

  def valid_attributes
    {:data => 'test milestone names'}
  end
end