require 'test_helper'

class MobileControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get text" do
    get :text
    assert_response :success
  end

  test "should get personal" do
    get :personal
    assert_response :success
  end

end
