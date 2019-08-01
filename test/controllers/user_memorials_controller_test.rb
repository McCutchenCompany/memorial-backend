require 'test_helper'

class UserMemorialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_memorial = user_memorials(:one)
  end

  test "should get index" do
    get user_memorials_url, as: :json
    assert_response :success
  end

  test "should create user_memorial" do
    assert_difference('UserMemorial.count') do
      post user_memorials_url, params: { user_memorial: { memorial_id: @user_memorial.memorial_id, permission: @user_memorial.permission, user_id: @user_memorial.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_memorial" do
    get user_memorial_url(@user_memorial), as: :json
    assert_response :success
  end

  test "should update user_memorial" do
    patch user_memorial_url(@user_memorial), params: { user_memorial: { memorial_id: @user_memorial.memorial_id, permission: @user_memorial.permission, user_id: @user_memorial.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_memorial" do
    assert_difference('UserMemorial.count', -1) do
      delete user_memorial_url(@user_memorial), as: :json
    end

    assert_response 204
  end
end
