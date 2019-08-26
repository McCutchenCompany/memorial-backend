require 'test_helper'

class MilitaryRanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @military_rank = military_ranks(:one)
  end

  test "should get index" do
    get military_ranks_url, as: :json
    assert_response :success
  end

  test "should create military_rank" do
    assert_difference('MilitaryRank.count') do
      post military_ranks_url, params: { military_rank: { image: @military_rank.image, military_branch_id: @military_rank.military_branch_id, name: @military_rank.name, order: @military_rank.order } }, as: :json
    end

    assert_response 201
  end

  test "should show military_rank" do
    get military_rank_url(@military_rank), as: :json
    assert_response :success
  end

  test "should update military_rank" do
    patch military_rank_url(@military_rank), params: { military_rank: { image: @military_rank.image, military_branch_id: @military_rank.military_branch_id, name: @military_rank.name, order: @military_rank.order } }, as: :json
    assert_response 200
  end

  test "should destroy military_rank" do
    assert_difference('MilitaryRank.count', -1) do
      delete military_rank_url(@military_rank), as: :json
    end

    assert_response 204
  end
end
