#Rspec tests for user

require 'spec_helper'

describe User do
  before(:each) do
    @user = User.new(valid_attributes)
  end
    
  it "should not be valid without a username"
    @user.username = ''
    @user.should_not be_valid
  end

  it "should not be valid without a first name"
    @user.first_name = ''
    @user.should_not be_valid
  end

  it "should not be valid without a last name"
    @user.last_name = ''
    @user.should_not be_valid
  end

  it "should be valid" do
    @user.should be_valid
  end

  def valid_attributes
    {:username => 'test user username', :first_name => 'test user firstname', :last_name => 'test user lastname'}
  end
end