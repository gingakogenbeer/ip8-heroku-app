require 'test_helper'

class AddrsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get addrs_index_url
    assert_response :success
  end

end
