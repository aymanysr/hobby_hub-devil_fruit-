require "test_helper"

class ShoppingCartsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get shopping_carts_show_url
    assert_response :success
  end

  test "should get edit" do
    get shopping_carts_edit_url
    assert_response :success
  end

  test "should get update" do
    get shopping_carts_update_url
    assert_response :success
  end
end
