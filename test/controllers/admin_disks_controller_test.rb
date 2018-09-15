require 'test_helper'

class AdminDisksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get admin_disks_create_url
    assert_response :success
  end

  test "should get update" do
    get admin_disks_update_url
    assert_response :success
  end

end
