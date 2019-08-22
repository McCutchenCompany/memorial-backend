require 'test_helper'

class MemMilitaryBranchesMedalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mem_military_branches_medal = mem_military_branches_medals(:one)
  end

  test "should get index" do
    get mem_military_branches_medals_url, as: :json
    assert_response :success
  end

  test "should create mem_military_branches_medal" do
    assert_difference('MemMilitaryBranchesMedal.count') do
      post mem_military_branches_medals_url, params: { mem_military_branches_medal: { medal_id: @mem_military_branches_medal.medal_id, memorial_military_branch_id: @mem_military_branches_medal.memorial_military_branch_id, order: @mem_military_branches_medal.order } }, as: :json
    end

    assert_response 201
  end

  test "should show mem_military_branches_medal" do
    get mem_military_branches_medal_url(@mem_military_branches_medal), as: :json
    assert_response :success
  end

  test "should update mem_military_branches_medal" do
    patch mem_military_branches_medal_url(@mem_military_branches_medal), params: { mem_military_branches_medal: { medal_id: @mem_military_branches_medal.medal_id, memorial_military_branch_id: @mem_military_branches_medal.memorial_military_branch_id, order: @mem_military_branches_medal.order } }, as: :json
    assert_response 200
  end

  test "should destroy mem_military_branches_medal" do
    assert_difference('MemMilitaryBranchesMedal.count', -1) do
      delete mem_military_branches_medal_url(@mem_military_branches_medal), as: :json
    end

    assert_response 204
  end
end
