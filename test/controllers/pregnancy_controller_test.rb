require 'test_helper'

class PregnancyControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get pregnancy_top_url
    assert_response :success
  end

end
