require 'test_helper'

class Subcategory1sControllerTest < ActionController::TestCase
  setup do
    @subcategory1 = subcategory1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subcategory1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subcategory1" do
    assert_difference('Subcategory1.count') do
      post :create, subcategory1: { category_id: @subcategory1.category_id, listing_type: @subcategory1.listing_type }
    end

    assert_redirected_to subcategory1_path(assigns(:subcategory1))
  end

  test "should show subcategory1" do
    get :show, id: @subcategory1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subcategory1
    assert_response :success
  end

  test "should update subcategory1" do
    patch :update, id: @subcategory1, subcategory1: { category_id: @subcategory1.category_id, listing_type: @subcategory1.listing_type }
    assert_redirected_to subcategory1_path(assigns(:subcategory1))
  end

  test "should destroy subcategory1" do
    assert_difference('Subcategory1.count', -1) do
      delete :destroy, id: @subcategory1
    end

    assert_redirected_to subcategory1s_path
  end
end
