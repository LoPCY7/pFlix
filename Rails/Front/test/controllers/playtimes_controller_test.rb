require 'test_helper'

class PlaytimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playtime = playtimes(:one)
  end

  test "should get index" do
    get playtimes_url
    assert_response :success
  end

  test "should get new" do
    get new_playtime_url
    assert_response :success
  end

  test "should create playtime" do
    assert_difference('Playtime.count') do
      post playtimes_url, params: { playtime: { movie_time: @playtime.movie_time, movieid: @playtime.movieid, userid: @playtime.userid } }
    end

    assert_redirected_to playtime_url(Playtime.last)
  end

  test "should show playtime" do
    get playtime_url(@playtime)
    assert_response :success
  end

  test "should get edit" do
    get edit_playtime_url(@playtime)
    assert_response :success
  end

  test "should update playtime" do
    patch playtime_url(@playtime), params: { playtime: { movie_time: @playtime.movie_time, movieid: @playtime.movieid, userid: @playtime.userid } }
    assert_redirected_to playtime_url(@playtime)
  end

  test "should destroy playtime" do
    assert_difference('Playtime.count', -1) do
      delete playtime_url(@playtime)
    end

    assert_redirected_to playtimes_url
  end
end
