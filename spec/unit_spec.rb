#Rspec tests for unit

require 'spec_helper'

describe Unit do
  before(:each) do
    @unit = Unit.new(valid_attributes)
  end
    
  it "should not be valid without a name"
    @unit.unit_name = ''
    @unit.should_not be_valid
 end

  it "should be valid" do
    @unit.should be_valid
  end

  def valid_attributes
    {:unit_name => 'test unit names'}
  end
end