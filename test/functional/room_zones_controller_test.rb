require 'test_helper'

class RoomZonesControllerTest < ActionController::TestCase
  setup do
    @room_zone = room_zones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:room_zones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room_zone" do
    assert_difference('RoomZone.count') do
      post :create, room_zone: {  }
    end

    assert_redirected_to room_zone_path(assigns(:room_zone))
  end

  test "should show room_zone" do
    get :show, id: @room_zone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room_zone
    assert_response :success
  end

  test "should update room_zone" do
    put :update, id: @room_zone, room_zone: {  }
    assert_redirected_to room_zone_path(assigns(:room_zone))
  end

  test "should destroy room_zone" do
    assert_difference('RoomZone.count', -1) do
      delete :destroy, id: @room_zone
    end

    assert_redirected_to room_zones_path
  end
end
