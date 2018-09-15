require 'test_helper'

class AdminSongsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get admin_songs_create_url
    assert_response :success
  end

  test "should get update" do
    get admin_songs_update_url
    assert_response :success
  end

end
