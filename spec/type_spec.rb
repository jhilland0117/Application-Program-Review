#Rspec tests for type

require 'spec_helper'

describe Type do
  before(:each) do
    @type = Type.new(valid_attributes)
  end
    
  it "should not be valid without a name"
    @type.name = ''
    @type.should_not be_valid
  end

  it "should be valid" do
    @type.should be_valid
  end

  def valid_attributes
    {:name => 'test type names'}
  end
end