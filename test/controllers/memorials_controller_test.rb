require 'test_helper'

class MemorialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memorial = memorials(:one)
  end

  test "should get index" do
    get memorials_url, as: :json
    assert_response :success
  end

  test "should create memorial" do
    assert_difference('Memorial.count') do
      post memorials_url, params: { memorial: { birth_date: @memorial.birth_date, death_date: @memorial.death_date, first_name: @memorial.first_name, image: @memorial.image, last_name: @memorial.last_name, middle_name: @memorial.middle_name } }, as: :json
    end

    assert_response 201
  end

  test "should show memorial" do
    get memorial_url(@memorial), as: :json
    assert_response :success
  end

  test "should update memorial" do
    patch memorial_url(@memorial), params: { memorial: { birth_date: @memorial.birth_date, death_date: @memorial.death_date, first_name: @memorial.first_name, image: @memorial.image, last_name: @memorial.last_name, middle_name: @memorial.middle_name } }, as: :json
    assert_response 200
  end

  test "should destroy memorial" do
    assert_difference('Memorial.count', -1) do
      delete memorial_url(@memorial), as: :json
    end

    assert_response 204
  end
end
