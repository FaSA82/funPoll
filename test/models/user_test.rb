require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'valid user' do
    user = User.new(username: 'Vasya', email: 'pupkin@gmail.com', password: 'q1w2e3r4t5y6')
    assert user.valid?
  end

  test 'invalid without name' do
    user = User.new(email: 'pupkin@gmail.com')
    refute user.valid?, 'user is valid without a name'
    assert_not_nil user.errors[:username], 'username validation does not work'
  end

  test 'invalid without email' do
    user = User.new(username: 'John')
    refute user.valid?, 'user is valid without an email'
    assert_not_nil user.errors[:email], 'email validation does not work' 
  end
end
