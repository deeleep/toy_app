require "test_helper"

class MicrospostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microspost = microsposts(:one)
  end

  test "should get index" do
    get microsposts_url
    assert_response :success
  end

  test "should get new" do
    get new_microspost_url
    assert_response :success
  end

  test "should create microspost" do
    assert_difference("Microspost.count") do
      post microsposts_url, params: { microspost: { content: @microspost.content, user_id: @microspost.user_id } }
    end

    assert_redirected_to microspost_url(Microspost.last)
  end

  test "should show microspost" do
    get microspost_url(@microspost)
    assert_response :success
  end

  test "should get edit" do
    get edit_microspost_url(@microspost)
    assert_response :success
  end

  test "should update microspost" do
    patch microspost_url(@microspost), params: { microspost: { content: @microspost.content, user_id: @microspost.user_id } }
    assert_redirected_to microspost_url(@microspost)
  end

  test "should destroy microspost" do
    assert_difference("Microspost.count", -1) do
      delete microspost_url(@microspost)
    end

    assert_redirected_to microsposts_url
  end
end
