require 'test_helper'

class StylistsControllerTest < ActionController::TestCase
  test "should get top" do
    get :top
    assert_response :success
  end

  test "should get random" do
    get :random
    assert_response :success
  end

end
