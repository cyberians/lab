require 'test_helper'

class AutosControllerTest < ActionController::TestCase
  setup do
    @auto = autos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:autos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auto" do
    assert_difference('Auto.count') do
      post :create, auto: { client_id: @auto.client_id, color: @auto.color, gosnomer: @auto.gosnomer, marka_model: @auto.marka_model, tech_passport: @auto.tech_passport, year_release: @auto.year_release }
    end

    assert_redirected_to auto_path(assigns(:auto))
  end

  test "should show auto" do
    get :show, id: @auto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auto
    assert_response :success
  end

  test "should update auto" do
    patch :update, id: @auto, auto: { client_id: @auto.client_id, color: @auto.color, gosnomer: @auto.gosnomer, marka_model: @auto.marka_model, tech_passport: @auto.tech_passport, year_release: @auto.year_release }
    assert_redirected_to auto_path(assigns(:auto))
  end

  test "should destroy auto" do
    assert_difference('Auto.count', -1) do
      delete :destroy, id: @auto
    end

    assert_redirected_to autos_path
  end
end
