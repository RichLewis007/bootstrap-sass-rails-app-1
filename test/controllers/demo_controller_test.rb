require 'test_helper'

class DemoControllerTest < ActionController::TestCase
  test "should get bootstrap" do
    get :bootstrap
    assert_response :success
  end

end
