require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get api" do
    get api_api_url
    assert_response :success
  end

end
