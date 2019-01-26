require 'test_helper'

class StovnertwittersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stovnertwitter = stovnertwitters(:one)
  end

  test "should get index" do
    get stovnertwitters_url
    assert_response :success
  end

  test "should get new" do
    get new_stovnertwitter_url
    assert_response :success
  end

  test "should create stovnertwitter" do
    assert_difference('Stovnertwitter.count') do
      post stovnertwitters_url, params: { stovnertwitter: { body: @stovnertwitter.body, username: @stovnertwitter.username } }
    end

    assert_redirected_to stovnertwitter_url(Stovnertwitter.last)
  end

  test "should show stovnertwitter" do
    get stovnertwitter_url(@stovnertwitter)
    assert_response :success
  end

  test "should get edit" do
    get edit_stovnertwitter_url(@stovnertwitter)
    assert_response :success
  end

  test "should update stovnertwitter" do
    patch stovnertwitter_url(@stovnertwitter), params: { stovnertwitter: { body: @stovnertwitter.body, username: @stovnertwitter.username } }
    assert_redirected_to stovnertwitter_url(@stovnertwitter)
  end

  test "should destroy stovnertwitter" do
    assert_difference('Stovnertwitter.count', -1) do
      delete stovnertwitter_url(@stovnertwitter)
    end

    assert_redirected_to stovnertwitters_url
  end
end
