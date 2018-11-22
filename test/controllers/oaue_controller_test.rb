require 'test_helper'

class OaueControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get oaue_index_url
    assert_response :success
  end

end
