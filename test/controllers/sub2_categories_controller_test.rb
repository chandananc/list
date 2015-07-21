require 'test_helper'

class Sub2CategoriesControllerTest < ActionController::TestCase
  setup do
    @sub2_category = sub2_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub2_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub2_category" do
    assert_difference('Sub2Category.count') do
      post :create, sub2_category: { category_id: @sub2_category.category_id, listing_status: @sub2_category.listing_status }
    end

    assert_redirected_to sub2_category_path(assigns(:sub2_category))
  end

  test "should show sub2_category" do
    get :show, id: @sub2_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub2_category
    assert_response :success
  end

  test "should update sub2_category" do
    patch :update, id: @sub2_category, sub2_category: { category_id: @sub2_category.category_id, listing_status: @sub2_category.listing_status }
    assert_redirected_to sub2_category_path(assigns(:sub2_category))
  end

  test "should destroy sub2_category" do
    assert_difference('Sub2Category.count', -1) do
      delete :destroy, id: @sub2_category
    end

    assert_redirected_to sub2_categories_path
  end
end
