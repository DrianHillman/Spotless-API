require 'test_helper'

class PlaylistsControllerTest < ActionController::TestCase
  setup do
    @playlist = playlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:playlists)
  end

  test "should create playlist" do
    assert_difference('Playlist.count') do
      post :create, playlist: { title: @playlist.title }
    end

    assert_response 201
  end

  test "should show playlist" do
    get :show, id: @playlist
    assert_response :success
  end

  test "should update playlist" do
    put :update, id: @playlist, playlist: { title: @playlist.title }
    assert_response 204
  end

  test "should destroy playlist" do
    assert_difference('Playlist.count', -1) do
      delete :destroy, id: @playlist
    end

    assert_response 204
  end
end
