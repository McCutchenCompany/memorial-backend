require 'test_helper'

class MilitaryBranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @military_branch = military_branches(:one)
  end

  test "should get index" do
    get military_branches_url, as: :json
    assert_response :success
  end

  test "should create military_branch" do
    assert_difference('MilitaryBranch.count') do
      post military_branches_url, params: { military_branch: { descprription: @military_branch.descprription, image: @military_branch.image, name: @military_branch.name } }, as: :json
    end

    assert_response 201
  end

  test "should show military_branch" do
    get military_branch_url(@military_branch), as: :json
    assert_response :success
  end

  test "should update military_branch" do
    patch military_branch_url(@military_branch), params: { military_branch: { descprription: @military_branch.descprription, image: @military_branch.image, name: @military_branch.name } }, as: :json
    assert_response 200
  end

  test "should destroy military_branch" do
    assert_difference('MilitaryBranch.count', -1) do
      delete military_branch_url(@military_branch), as: :json
    end

    assert_response 204
  end
end
