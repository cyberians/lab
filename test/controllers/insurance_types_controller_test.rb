require 'test_helper'

class InsuranceTypesControllerTest < ActionController::TestCase
  setup do
    @insurance_type = insurance_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insurance_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insurance_type" do
    assert_difference('InsuranceType.count') do
      post :create, insurance_type: { desc: @insurance_type.desc, name: @insurance_type.name, price: @insurance_type.price }
    end

    assert_redirected_to insurance_type_path(assigns(:insurance_type))
  end

  test "should show insurance_type" do
    get :show, id: @insurance_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insurance_type
    assert_response :success
  end

  test "should update insurance_type" do
    patch :update, id: @insurance_type, insurance_type: { desc: @insurance_type.desc, name: @insurance_type.name, price: @insurance_type.price }
    assert_redirected_to insurance_type_path(assigns(:insurance_type))
  end

  test "should destroy insurance_type" do
    assert_difference('InsuranceType.count', -1) do
      delete :destroy, id: @insurance_type
    end

    assert_redirected_to insurance_types_path
  end
end
