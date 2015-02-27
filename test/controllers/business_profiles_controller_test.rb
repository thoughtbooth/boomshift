require 'test_helper'

class BusinessProfilesControllerTest < ActionController::TestCase
  setup do
    @business_profile = business_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_profile" do
    assert_difference('BusinessProfile.count') do
      post :create, business_profile: { about: @business_profile.about, addr1: @business_profile.addr1, addr2: @business_profile.addr2, city: @business_profile.city, country: @business_profile.country, name: @business_profile.name, phone: @business_profile.phone, state: @business_profile.state }
    end

    assert_redirected_to business_profile_path(assigns(:business_profile))
  end

  test "should show business_profile" do
    get :show, id: @business_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_profile
    assert_response :success
  end

  test "should update business_profile" do
    patch :update, id: @business_profile, business_profile: { about: @business_profile.about, addr1: @business_profile.addr1, addr2: @business_profile.addr2, city: @business_profile.city, country: @business_profile.country, name: @business_profile.name, phone: @business_profile.phone, state: @business_profile.state }
    assert_redirected_to business_profile_path(assigns(:business_profile))
  end

  test "should destroy business_profile" do
    assert_difference('BusinessProfile.count', -1) do
      delete :destroy, id: @business_profile
    end

    assert_redirected_to business_profiles_path
  end
end
