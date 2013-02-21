require 'test_helper'

class ComparaisonsControllerTest < ActionController::TestCase
  setup do
    @comparaison = comparaisons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comparaisons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comparaison" do
    assert_difference('Comparaison.count') do
      post :create, comparaison: { category_id: @comparaison.category_id, created_at: @comparaison.created_at, first_product_id: @comparaison.first_product_id, second_product_id: @comparaison.second_product_id, slug: @comparaison.slug, user_id: @comparaison.user_id }
    end

    assert_redirected_to comparaison_path(assigns(:comparaison))
  end

  test "should show comparaison" do
    get :show, id: @comparaison
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comparaison
    assert_response :success
  end

  test "should update comparaison" do
    put :update, id: @comparaison, comparaison: { category_id: @comparaison.category_id, created_at: @comparaison.created_at, first_product_id: @comparaison.first_product_id, second_product_id: @comparaison.second_product_id, slug: @comparaison.slug, user_id: @comparaison.user_id }
    assert_redirected_to comparaison_path(assigns(:comparaison))
  end

  test "should destroy comparaison" do
    assert_difference('Comparaison.count', -1) do
      delete :destroy, id: @comparaison
    end

    assert_redirected_to comparaisons_path
  end
end
