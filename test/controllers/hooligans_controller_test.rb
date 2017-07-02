require 'test_helper'

class HooligansControllerTest < ActionController::TestCase
  setup do
    @hooligan = hooligans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hooligans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hooligan" do
    assert_difference('Hooligan.count') do
      post :create, hooligan: { first_name: @hooligan.first_name, last_name: @hooligan.last_name, pesel: @hooligan.pesel }
    end

    assert_redirected_to hooligan_path(assigns(:hooligan))
  end

  test "should show hooligan" do
    get :show, id: @hooligan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hooligan
    assert_response :success
  end

  test "should update hooligan" do
    patch :update, id: @hooligan, hooligan: { first_name: @hooligan.first_name, last_name: @hooligan.last_name, pesel: @hooligan.pesel }
    assert_redirected_to hooligan_path(assigns(:hooligan))
  end

  test "should destroy hooligan" do
    assert_difference('Hooligan.count', -1) do
      delete :destroy, id: @hooligan
    end

    assert_redirected_to hooligans_path
  end
end
