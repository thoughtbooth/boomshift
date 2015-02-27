require 'test_helper'

class ClientProfilesControllerTest < ActionController::TestCase
  setup do
    @client_profile = client_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_profile" do
    assert_difference('ClientProfile.count') do
      post :create, client_profile: { addr1: @client_profile.addr1, addr2: @client_profile.addr2, city: @client_profile.city, country: @client_profile.country, fname: @client_profile.fname, lname: @client_profile.lname, phone: @client_profile.phone, state: @client_profile.state }
    end

    assert_redirected_to client_profile_path(assigns(:client_profile))
  end

  test "should show client_profile" do
    get :show, id: @client_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client_profile
    assert_response :success
  end

  test "should update client_profile" do
    patch :update, id: @client_profile, client_profile: { addr1: @client_profile.addr1, addr2: @client_profile.addr2, city: @client_profile.city, country: @client_profile.country, fname: @client_profile.fname, lname: @client_profile.lname, phone: @client_profile.phone, state: @client_profile.state }
    assert_redirected_to client_profile_path(assigns(:client_profile))
  end

  test "should destroy client_profile" do
    assert_difference('ClientProfile.count', -1) do
      delete :destroy, id: @client_profile
    end

    assert_redirected_to client_profiles_path
  end
end
