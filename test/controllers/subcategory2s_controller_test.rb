require 'test_helper'

class Subcategory2sControllerTest < ActionController::TestCase
  setup do
    @subcategory2 = subcategory2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subcategory2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subcategory2" do
    assert_difference('Subcategory2.count') do
      post :create, subcategory2: { category_id: @subcategory2.category_id, listing_status: @subcategory2.listing_status }
    end

    assert_redirected_to subcategory2_path(assigns(:subcategory2))
  end

  test "should show subcategory2" do
    get :show, id: @subcategory2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subcategory2
    assert_response :success
  end

  test "should update subcategory2" do
    patch :update, id: @subcategory2, subcategory2: { category_id: @subcategory2.category_id, listing_status: @subcategory2.listing_status }
    assert_redirected_to subcategory2_path(assigns(:subcategory2))
  end

  test "should destroy subcategory2" do
    assert_difference('Subcategory2.count', -1) do
      delete :destroy, id: @subcategory2
    end

    assert_redirected_to subcategory2s_path
  end
end
