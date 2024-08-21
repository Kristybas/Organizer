require "test_helper"

class UserAppsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_apps_index_url
    assert_response :success
  end

  test "should get show" do
    get user_apps_show_url
    assert_response :success
  end

  test "should get new" do
    get user_apps_new_url
    assert_response :success
  end

  test "should get edit" do
    get user_apps_edit_url
    assert_response :success
  end
end
