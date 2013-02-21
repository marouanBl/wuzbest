require 'test_helper'

class ManufacturersControllerTest < ActionController::TestCase
  setup do
    @manufacturer = manufacturers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manufacturers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manufacturer" do
    assert_difference('Manufacturer.count') do
      post :create, manufacturer: { adress: @manufacturer.adress, city_id: @manufacturer.city_id, closed_at: @manufacturer.closed_at, contact_email: @manufacturer.contact_email, contact_fax: @manufacturer.contact_fax, contact_phone: @manufacturer.contact_phone, country_id: @manufacturer.country_id, cover_id: @manufacturer.cover_id, created_at: @manufacturer.created_at, founded_at: @manufacturer.founded_at, hq_lat: @manufacturer.hq_lat, hq_long: @manufacturer.hq_long, long_desc: @manufacturer.long_desc, name: @manufacturer.name, owner_id: @manufacturer.owner_id, slug: @manufacturer.slug, state_id: @manufacturer.state_id, stock_dir: @manufacturer.stock_dir, stock_ref: @manufacturer.stock_ref, stock_value: @manufacturer.stock_value, updated_at: @manufacturer.updated_at, user_id: @manufacturer.user_id, web: @manufacturer.web }
    end

    assert_redirected_to manufacturer_path(assigns(:manufacturer))
  end

  test "should show manufacturer" do
    get :show, id: @manufacturer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manufacturer
    assert_response :success
  end

  test "should update manufacturer" do
    put :update, id: @manufacturer, manufacturer: { adress: @manufacturer.adress, city_id: @manufacturer.city_id, closed_at: @manufacturer.closed_at, contact_email: @manufacturer.contact_email, contact_fax: @manufacturer.contact_fax, contact_phone: @manufacturer.contact_phone, country_id: @manufacturer.country_id, cover_id: @manufacturer.cover_id, created_at: @manufacturer.created_at, founded_at: @manufacturer.founded_at, hq_lat: @manufacturer.hq_lat, hq_long: @manufacturer.hq_long, long_desc: @manufacturer.long_desc, name: @manufacturer.name, owner_id: @manufacturer.owner_id, slug: @manufacturer.slug, state_id: @manufacturer.state_id, stock_dir: @manufacturer.stock_dir, stock_ref: @manufacturer.stock_ref, stock_value: @manufacturer.stock_value, updated_at: @manufacturer.updated_at, user_id: @manufacturer.user_id, web: @manufacturer.web }
    assert_redirected_to manufacturer_path(assigns(:manufacturer))
  end

  test "should destroy manufacturer" do
    assert_difference('Manufacturer.count', -1) do
      delete :destroy, id: @manufacturer
    end

    assert_redirected_to manufacturers_path
  end
end
