#Section RSpec tests

require 'spec_helper'

 section_number description name

describe Section do
  before(:each) do
    @section = Section.new(valid_attributes)
  end

  it "should not be valid without a name" do
    @section.name = ''
    @section.should_not be_valid
  end

  it "should not be valid without a description" do
    @section.description = ''
    @section.should_not be_valid
  end

  it "should not be valid without a number" do
    @section.section_number = ''
    @section.should_not be_valid
  end

  it "should be valid" do
    @sectiono.should be_valid
  end

  def valid_attributes
    { :name => 'test name', :description => 'test sect descr', :section_number => 'test sect number'}
  end
end

