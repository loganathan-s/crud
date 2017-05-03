require 'test_helper'

class UserDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_detail = user_details(:one)
  end

  test "should get index" do
    get user_details_url, as: :json
    assert_response :success
  end

  test "should create user_detail" do
    assert_difference('UserDetail.count') do
      post user_details_url, params: { user_detail: { email: @user_detail.email, facebook_profile: @user_detail.facebook_profile, first_name: @user_detail.first_name, last_name: @user_detail.last_name, twitter_profile: @user_detail.twitter_profile } }, as: :json
    end

    assert_response 201
  end

  test "should show user_detail" do
    get user_detail_url(@user_detail), as: :json
    assert_response :success
  end

  test "should update user_detail" do
    patch user_detail_url(@user_detail), params: { user_detail: { email: @user_detail.email, facebook_profile: @user_detail.facebook_profile, first_name: @user_detail.first_name, last_name: @user_detail.last_name, twitter_profile: @user_detail.twitter_profile } }, as: :json
    assert_response 200
  end

  test "should destroy user_detail" do
    assert_difference('UserDetail.count', -1) do
      delete user_detail_url(@user_detail), as: :json
    end

    assert_response 204
  end
end
