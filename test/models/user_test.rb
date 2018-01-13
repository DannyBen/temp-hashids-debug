require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users :one
  end

  # Virtual Attributes

  test "#name should return first name" do
    assert_equal 'One', @user.name
  end

  test "#hashid should be 8 characters long" do
    assert_equal 8, @user.hashid.size
  end
end
