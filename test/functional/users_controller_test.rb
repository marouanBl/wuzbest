require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { avatar: @user.avatar, city_id: @user.city_id, confirmation_token: @user.confirmation_token, country_id: @user.country_id, credentials_expire_at: @user.credentials_expire_at, credentials_expired: @user.credentials_expired, currency_id: @user.currency_id, email: @user.email, email_canonical: @user.email_canonical, enabled: @user.enabled, expired: @user.expired, expires_at: @user.expires_at, last_login: @user.last_login, locked: @user.locked, password: @user.password, password_requested_at: @user.password_requested_at, roles: @user.roles, salt: @user.salt, state_id: @user.state_id, username: @user.username, username_canonical: @user.username_canonical }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { avatar: @user.avatar, city_id: @user.city_id, confirmation_token: @user.confirmation_token, country_id: @user.country_id, credentials_expire_at: @user.credentials_expire_at, credentials_expired: @user.credentials_expired, currency_id: @user.currency_id, email: @user.email, email_canonical: @user.email_canonical, enabled: @user.enabled, expired: @user.expired, expires_at: @user.expires_at, last_login: @user.last_login, locked: @user.locked, password: @user.password, password_requested_at: @user.password_requested_at, roles: @user.roles, salt: @user.salt, state_id: @user.state_id, username: @user.username, username_canonical: @user.username_canonical }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
