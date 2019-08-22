require 'test_helper'

class MilitaryBranchMedalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @military_branch_medal = military_branch_medals(:one)
  end

  test "should get index" do
    get military_branch_medals_url, as: :json
    assert_response :success
  end

  test "should create military_branch_medal" do
    assert_difference('MilitaryBranchMedal.count') do
      post military_branch_medals_url, params: { military_branch_medal: { medal_id: @military_branch_medal.medal_id, military_branch_id: @military_branch_medal.military_branch_id, order: @military_branch_medal.order } }, as: :json
    end

    assert_response 201
  end

  test "should show military_branch_medal" do
    get military_branch_medal_url(@military_branch_medal), as: :json
    assert_response :success
  end

  test "should update military_branch_medal" do
    patch military_branch_medal_url(@military_branch_medal), params: { military_branch_medal: { medal_id: @military_branch_medal.medal_id, military_branch_id: @military_branch_medal.military_branch_id, order: @military_branch_medal.order } }, as: :json
    assert_response 200
  end

  test "should destroy military_branch_medal" do
    assert_difference('MilitaryBranchMedal.count', -1) do
      delete military_branch_medal_url(@military_branch_medal), as: :json
    end

    assert_response 204
  end
end
