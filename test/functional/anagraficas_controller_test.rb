require 'test_helper'

class AnagraficasControllerTest < ActionController::TestCase
  setup do
    @anagrafica = anagraficas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anagraficas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anagrafica" do
    assert_difference('Anagrafica.count') do
      post :create, anagrafica: @anagrafica.attributes
    end

    assert_redirected_to anagrafica_path(assigns(:anagrafica))
  end

  test "should show anagrafica" do
    get :show, id: @anagrafica.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anagrafica.to_param
    assert_response :success
  end

  test "should update anagrafica" do
    put :update, id: @anagrafica.to_param, anagrafica: @anagrafica.attributes
    assert_redirected_to anagrafica_path(assigns(:anagrafica))
  end

  test "should destroy anagrafica" do
    assert_difference('Anagrafica.count', -1) do
      delete :destroy, id: @anagrafica.to_param
    end

    assert_redirected_to anagraficas_path
  end
end
