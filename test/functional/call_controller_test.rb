require 'test_helper'

class CallControllerTest < ActionController::TestCase
  test "should get test" do
    get :test
    assert_response :success
  end

end
