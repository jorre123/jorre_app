require 'test_helper'

class PresencesControllerTest < ActionController::TestCase
  setup do
    @presence = presences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create presence" do
    assert_difference('Presence.count') do
      post :create, :presence => @presence.attributes
    end

    assert_redirected_to presence_path(assigns(:presence))
  end

  test "should show presence" do
    get :show, :id => @presence.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @presence.to_param
    assert_response :success
  end

  test "should update presence" do
    put :update, :id => @presence.to_param, :presence => @presence.attributes
    assert_redirected_to presence_path(assigns(:presence))
  end

  test "should destroy presence" do
    assert_difference('Presence.count', -1) do
      delete :destroy, :id => @presence.to_param
    end

    assert_redirected_to presences_path
  end
end
