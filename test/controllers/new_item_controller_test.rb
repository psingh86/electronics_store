require "test_helper"

class NewItemControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get new_item_index_url
    assert_response :success
  end
end
