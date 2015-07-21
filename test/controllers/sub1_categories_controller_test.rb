require 'test_helper'

class Sub1CategoriesControllerTest < ActionController::TestCase
  setup do
    @sub1_category = sub1_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub1_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub1_category" do
    assert_difference('Sub1Category.count') do
      post :create, sub1_category: { category_id: @sub1_category.category_id, listing_type: @sub1_category.listing_type }
    end

    assert_redirected_to sub1_category_path(assigns(:sub1_category))
  end

  test "should show sub1_category" do
    get :show, id: @sub1_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub1_category
    assert_response :success
  end

  test "should update sub1_category" do
    patch :update, id: @sub1_category, sub1_category: { category_id: @sub1_category.category_id, listing_type: @sub1_category.listing_type }
    assert_redirected_to sub1_category_path(assigns(:sub1_category))
  end

  test "should destroy sub1_category" do
    assert_difference('Sub1Category.count', -1) do
      delete :destroy, id: @sub1_category
    end

    assert_redirected_to sub1_categories_path
  end
end
