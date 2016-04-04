require 'test_helper'

class AirplaneControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get airplane_index_url
    assert_response :success
  end

end
