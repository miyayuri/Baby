require 'test_helper'

class InfertilityControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get infertility_top_url
    assert_response :success
  end

end
