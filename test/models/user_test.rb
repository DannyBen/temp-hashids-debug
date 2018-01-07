require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users :one
  end

  # Virtual Attributes

  test "#name should return first name" do
    assert_equal 'One', @user.name
  end


end
