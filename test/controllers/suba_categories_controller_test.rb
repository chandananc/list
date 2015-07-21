require 'test_helper'

class SubaCategoriesControllerTest < ActionController::TestCase
  setup do
    @suba_category = suba_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suba_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suba_category" do
    assert_difference('SubaCategory.count') do
      post :create, suba_category: { category_id: @suba_category.category_id, listing_type: @suba_category.listing_type }
    end

    assert_redirected_to suba_category_path(assigns(:suba_category))
  end

  test "should show suba_category" do
    get :show, id: @suba_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suba_category
    assert_response :success
  end

  test "should update suba_category" do
    patch :update, id: @suba_category, suba_category: { category_id: @suba_category.category_id, listing_type: @suba_category.listing_type }
    assert_redirected_to suba_category_path(assigns(:suba_category))
  end

  test "should destroy suba_category" do
    assert_difference('SubaCategory.count', -1) do
      delete :destroy, id: @suba_category
    end

    assert_redirected_to suba_categories_path
  end
end
