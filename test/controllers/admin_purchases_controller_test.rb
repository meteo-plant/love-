require 'test_helper'

class AdminPurchasesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_purchases_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_purchases_show_url
    assert_response :success
  end

end
