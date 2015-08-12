#Rspec tests for user role

require 'spec_helper'

describe UserRole do
  before(:each) do
    @user_role = UserRole.new(valid_attributes)
  end
    
  it "should not be valid without a role"
    @user_role.role = ''
    @user_role.should_not be_valid
  end

  it "should be valid" do
    @user_role.should be_valid
  end

  def valid_attributes
    {:role => 'test UserRole roles'}
  end
end