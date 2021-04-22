require "test_helper"

class ProductSearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_search_index_url
    assert_response :success
  end
end
