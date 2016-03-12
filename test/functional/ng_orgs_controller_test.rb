require 'test_helper'

class NgOrgsControllerTest < ActionController::TestCase
  setup do
    @ng_org = ng_orgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ng_orgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ng_org" do
    assert_difference('NgOrg.count') do
      post :create, ng_org: { address_line1: @ng_org.address_line1, address_line2: @ng_org.address_line2, city: @ng_org.city, country: @ng_org.country, domain: @ng_org.domain, email: @ng_org.email, mobile: @ng_org.mobile, name: @ng_org.name, password: @ng_org.password, registration_date: @ng_org.registration_date, registration_number: @ng_org.registration_number, state: @ng_org.state, website: @ng_org.website }
    end

    assert_redirected_to ng_org_path(assigns(:ng_org))
  end

  test "should show ng_org" do
    get :show, id: @ng_org
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ng_org
    assert_response :success
  end

  test "should update ng_org" do
    put :update, id: @ng_org, ng_org: { address_line1: @ng_org.address_line1, address_line2: @ng_org.address_line2, city: @ng_org.city, country: @ng_org.country, domain: @ng_org.domain, email: @ng_org.email, mobile: @ng_org.mobile, name: @ng_org.name, password: @ng_org.password, registration_date: @ng_org.registration_date, registration_number: @ng_org.registration_number, state: @ng_org.state, website: @ng_org.website }
    assert_redirected_to ng_org_path(assigns(:ng_org))
  end

  test "should destroy ng_org" do
    assert_difference('NgOrg.count', -1) do
      delete :destroy, id: @ng_org
    end

    assert_redirected_to ng_orgs_path
  end
end
