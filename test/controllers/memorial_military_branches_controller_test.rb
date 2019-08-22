require 'test_helper'

class MemorialMilitaryBranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memorial_military_branch = memorial_military_branches(:one)
  end

  test "should get index" do
    get memorial_military_branches_url, as: :json
    assert_response :success
  end

  test "should create memorial_military_branch" do
    assert_difference('MemorialMilitaryBranch.count') do
      post memorial_military_branches_url, params: { memorial_military_branch: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show memorial_military_branch" do
    get memorial_military_branch_url(@memorial_military_branch), as: :json
    assert_response :success
  end

  test "should update memorial_military_branch" do
    patch memorial_military_branch_url(@memorial_military_branch), params: { memorial_military_branch: {  } }, as: :json
    assert_response 200
  end

  test "should destroy memorial_military_branch" do
    assert_difference('MemorialMilitaryBranch.count', -1) do
      delete memorial_military_branch_url(@memorial_military_branch), as: :json
    end

    assert_response 204
  end
end
