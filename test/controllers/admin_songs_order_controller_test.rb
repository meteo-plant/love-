require 'test_helper'

class AdminSongsOrderControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get admin_songs_order_create_url
    assert_response :success
  end

  test "should get update" do
    get admin_songs_order_update_url
    assert_response :success
  end

end
