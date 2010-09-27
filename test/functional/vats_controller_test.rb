require 'test_helper'

class VatsControllerTest < ActionController::TestCase
  setup do
    @vat = vats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vat" do
    assert_difference('Vat.count') do
      post :create, :vat => @vat.attributes
    end

    assert_redirected_to vat_path(assigns(:vat))
  end

  test "should show vat" do
    get :show, :id => @vat.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vat.to_param
    assert_response :success
  end

  test "should update vat" do
    put :update, :id => @vat.to_param, :vat => @vat.attributes
    assert_redirected_to vat_path(assigns(:vat))
  end

  test "should destroy vat" do
    assert_difference('Vat.count', -1) do
      delete :destroy, :id => @vat.to_param
    end

    assert_redirected_to vats_path
  end
end
