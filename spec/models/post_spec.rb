require 'rails_helper'

RSpec.describe Post, type: :model do
  # create a current user for this test.  it will not have a session but it will assume a current user already exists
  #  the tests in this page will assume that you have a current user to even get tothis page
  # if you wanted to check that there was an actual current_user add that in your before action in the controller
  # example  in the POSTS controller:
      #  before_action authenticate_user!
  # another test will validate that there is a current user before you get to this page.

  current_user = User.first_or_create!(email: 'testcase@example.com', password: 'password', password_confirmation: 'password')

  it 'has a title' do
    post = Post.new(
      title: '',
      body: 'It Has a body',
      user:current_user,
      views: 0
    )

    expect(post).to_not be_valid

    post.title = "Has a title"
    expect(post).to be_valid
  end

  it 'has a body' do
      post = Post.new(
        title: "valid title",
        body: '',
        user: current_user,
        views: 0
      )
      expect(post).to_not be_valid
      post.body = "has a body"
      expect(post).to be_valid
  end

  it 'has a title at least 2 characters long' do
    post = Post.new(
      title: "",
      body: 'has a body',
      user: current_user,
      views: 0
    )
    expect(post).to_not be_valid

    post.title = '12'
    expect(post).to be_valid
  end

  # this test should normally be broken up into multiple tests to check 5 chracters, and 100 characters

  it 'has a body between 5 and 100 chracters' do
    post = Post.new(
      title: "valid title",
      body: '',
      user: current_user,
      views: 0
    )
    expect(post).to_not be_valid

    post.body = '12345'
    expect(post).to be_valid

    hundred_char_string = '2YaRjEbx9oXSxPpMwrI51GEdBseuJDrbFzD1XOxIhdyIPkoqlIgrpAekSFdAJdkbdZRIwKWZ4Ia8YGWAmTzTFvqQ7ysdk02lZ6GQ'

    post.body = hundred_char_string
    expect(post).to be_valid

    post.body = hundred_char_string + '1'
    expect(post).to_not be_valid
  end

  it ' has numerical views' do
    post = Post.new(
      title: "has a title",
      body: 'has a body',
      user: current_user,
      views: 0
    )
    expect(post.views).to be_a(Integer)
  end
end
