#Criterion RSpec tests

require 'spec_helper'

describe Criteria do
  before(:each) do
    @criteria = Criteria.new(valid_attribute)
  end

  it "Should not be valid without a name" do
    @criteria.name = ''
    @criteria.should_not be_valid
  end

  it "should not be valid without a description" do
    @criteria.description = ''
    @criteria.should_not be_valid
  end

  it "should not be valid without a number" do
    @criteria.criterion_number = ''
    @criteria.should_not be_valid
  end

  it "should be valid" do
    @criteria.should be_valid
  end

  def valid_attributes
    {:name => 'test crit name', :description => 'test crit descr', :criteria_number => 'test crit number'}
  end
end
