require 'rails_helper'

RSpec.describe Post, type: :model do
  # create a current user for this test.  it will not have a session but it will assume a current user already exists
  #  the tests in this page will assume that you have a current user to even get tothis page
  # if you wanted to check that there was an actual current_user add that in your before action in the controller
  # example  in the POSTS controller:
      #  before_action authenticate_user!
  # another test will validate that there is a current user before you get to this page.

  current_user = User.find_or_create!(email: 'testcase@example.com', password: 'password', password_confirmation: 'password')

  it 'has a title' do

  end

  it 'has a body' do

  end

  it 'has a title at least 2 characters long' do

  end

  it 'has a body between 5 and 100 chracters' do

  end

  it ' has numerical views' do

  end
end
