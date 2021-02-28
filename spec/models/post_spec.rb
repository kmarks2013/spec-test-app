require 'rails_helper'

RSpec.describe Post, type: :model do
  # create a current user for this test.  it will not have a session but it will assume a current user already exists
  #  the tests in this page will assume that you have a current user to even get tothis page 

  # if you wanted to check that there was an actual current_user add that in your before action in the controller
  # example  in the POSTS controller:
      #  before_action authenticate_user!
  # another test will validate that there is a current user before you get to this page.

end
