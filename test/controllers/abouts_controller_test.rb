require 'test_helper'

class AboutsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get abouts_top_url
    assert_response :success
  end

end
