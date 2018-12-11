require 'test_helper'

class TimelinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timeline = timelines(:one)
  end

  test "should get index" do
    get timelines_url, as: :json
    assert_response :success
  end

  test "should create timeline" do
    assert_difference('Timeline.count') do
      post timelines_url, params: { timeline: { asset_link: @timeline.asset_link, asset_type: @timeline.asset_type, date: @timeline.date, date_format: @timeline.date_format, description: @timeline.description, memorial_id: @timeline.memorial_id } }, as: :json
    end

    assert_response 201
  end

  test "should show timeline" do
    get timeline_url(@timeline), as: :json
    assert_response :success
  end

  test "should update timeline" do
    patch timeline_url(@timeline), params: { timeline: { asset_link: @timeline.asset_link, asset_type: @timeline.asset_type, date: @timeline.date, date_format: @timeline.date_format, description: @timeline.description, memorial_id: @timeline.memorial_id } }, as: :json
    assert_response 200
  end

  test "should destroy timeline" do
    assert_difference('Timeline.count', -1) do
      delete timeline_url(@timeline), as: :json
    end

    assert_response 204
  end
end
