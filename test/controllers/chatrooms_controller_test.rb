require 'test_helper'

class ChatroomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chatrooms_index_url
    assert_response :success
  end

  test "should get show" do
    get chatrooms_show_url
    assert_response :success
  end

  test "should get form" do
    get chatrooms_form_url
    assert_response :success
  end

  test "should get new" do
    get chatrooms_new_url
    assert_response :success
  end

  test "should get edit" do
    get chatrooms_edit_url
    assert_response :success
  end

end
