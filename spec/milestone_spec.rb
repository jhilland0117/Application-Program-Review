#Rspec tests for milestones

require 'spec_helper'

describe Milestone do
  before(:each) do
    @milestone = Milestone.new(valid_attributes)
  end

  it "should not be valid without a name"
    @milestone.name = ''
    @milestone.should_not be_valid
  end

  it "should be valid" do
    @milestone.should be_valid
  end

  def valid_attributes
      {:name => 'test milestone names'}
  end
end