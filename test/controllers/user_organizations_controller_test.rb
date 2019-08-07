require 'test_helper'

class UserOrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_organization = user_organizations(:one)
  end

  test "should get index" do
    get user_organizations_url, as: :json
    assert_response :success
  end

  test "should create user_organization" do
    assert_difference('UserOrganization.count') do
      post user_organizations_url, params: { user_organization: { organization_id: @user_organization.organization_id, user_id: @user_organization.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_organization" do
    get user_organization_url(@user_organization), as: :json
    assert_response :success
  end

  test "should update user_organization" do
    patch user_organization_url(@user_organization), params: { user_organization: { organization_id: @user_organization.organization_id, user_id: @user_organization.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_organization" do
    assert_difference('UserOrganization.count', -1) do
      delete user_organization_url(@user_organization), as: :json
    end

    assert_response 204
  end
end
