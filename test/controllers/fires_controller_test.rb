require 'test_helper'

class FiresControllerTest < ActionController::TestCase
  test "should get getData" do
    get :getData
    assert_response :success
  end

end
