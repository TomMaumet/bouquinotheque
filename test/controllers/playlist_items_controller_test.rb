require "test_helper"

class PlaylistItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get playlist_items_create_url
    assert_response :success
  end
end
