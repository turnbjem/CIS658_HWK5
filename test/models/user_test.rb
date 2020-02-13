require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(fname: "first name", lname: "last name", email: 'email@example.com', thumbnail: nil)
  end

  test "User is valid" do
    assert @user.valid?
  end

  test "User must have a valid name" do
    @user.fname = nil
    assert_not @user.valid?
  end

  test "User must have a valid lname" do
    @user.lname = nil
    assert_not @user.valid?
  end

  test "Email must be valid" do
    @user.email =""
    assert_not @user.valid?
  end

  test "Thumbnail must end with .jpg, .gif, .png" do
    @user.thumbnail = "x.jpg"
    assert @user.valid?
    @user.thumbnail = "x.gif"
    assert @user.valid?
    @user.thumbnail = "x.png"
    assert @user.valid?
  end


end
