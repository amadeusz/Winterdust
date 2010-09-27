require 'test_helper'

class WaresControllerTest < ActionController::TestCase
  setup do
    @ware = wares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ware" do
    assert_difference('Ware.count') do
      post :create, :ware => @ware.attributes
    end

    assert_redirected_to ware_path(assigns(:ware))
  end

  test "should show ware" do
    get :show, :id => @ware.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ware.to_param
    assert_response :success
  end

  test "should update ware" do
    put :update, :id => @ware.to_param, :ware => @ware.attributes
    assert_redirected_to ware_path(assigns(:ware))
  end

  test "should destroy ware" do
    assert_difference('Ware.count', -1) do
      delete :destroy, :id => @ware.to_param
    end

    assert_redirected_to wares_path
  end
end
