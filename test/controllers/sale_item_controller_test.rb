require "test_helper"

class SaleItemControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sale_item_index_url
    assert_response :success
  end
end
