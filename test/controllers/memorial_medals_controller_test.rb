require 'test_helper'

class MemorialMedalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memorial_medal = memorial_medals(:one)
  end

  test "should get index" do
    get memorial_medals_url, as: :json
    assert_response :success
  end

  test "should create memorial_medal" do
    assert_difference('MemorialMedal.count') do
      post memorial_medals_url, params: { memorial_medal: { date_awarded: @memorial_medal.date_awarded, description: @memorial_medal.description, medal_id: @memorial_medal.medal_id, memorial_id: @memorial_medal.memorial_id, order: @memorial_medal.order } }, as: :json
    end

    assert_response 201
  end

  test "should show memorial_medal" do
    get memorial_medal_url(@memorial_medal), as: :json
    assert_response :success
  end

  test "should update memorial_medal" do
    patch memorial_medal_url(@memorial_medal), params: { memorial_medal: { date_awarded: @memorial_medal.date_awarded, description: @memorial_medal.description, medal_id: @memorial_medal.medal_id, memorial_id: @memorial_medal.memorial_id, order: @memorial_medal.order } }, as: :json
    assert_response 200
  end

  test "should destroy memorial_medal" do
    assert_difference('MemorialMedal.count', -1) do
      delete memorial_medal_url(@memorial_medal), as: :json
    end

    assert_response 204
  end
end
