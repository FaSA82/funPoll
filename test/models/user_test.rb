require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'valid user' do
    user = User.new(username: 'Vasya', email: 'pupkin@gmail.com', password: 'q1w2e3r4t5y6')
    assert user.valid?
  end


  context "validations" do
    subject { FactoryBot.build(:user) }
    should validate_presence_of(:username)
    should validate_presence_of(:email)
    should validate_uniqueness_of(:email)
    should validate_uniqueness_of(:username)
    should allow_value(/\A[a-zA-Z0-9.!\#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\z/).for(:email)
    #  should_not allow_value('invalid.email').for(:email)
  end
  


end
