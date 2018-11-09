require 'test_helper'

class CarouselControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get carousel_show_url
    assert_response :success
  end

end
