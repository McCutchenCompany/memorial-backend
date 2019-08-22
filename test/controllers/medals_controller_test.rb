require 'test_helper'

class MedalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medal = medals(:one)
  end

  test "should get index" do
    get medals_url, as: :json
    assert_response :success
  end

  test "should create medal" do
    assert_difference('Medal.count') do
      post medals_url, params: { medal: { image: @medal.image, name: @medal.name } }, as: :json
    end

    assert_response 201
  end

  test "should show medal" do
    get medal_url(@medal), as: :json
    assert_response :success
  end

  test "should update medal" do
    patch medal_url(@medal), params: { medal: { image: @medal.image, name: @medal.name } }, as: :json
    assert_response 200
  end

  test "should destroy medal" do
    assert_difference('Medal.count', -1) do
      delete medal_url(@medal), as: :json
    end

    assert_response 204
  end
end
