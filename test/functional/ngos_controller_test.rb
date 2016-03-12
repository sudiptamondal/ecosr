require 'test_helper'

class NgosControllerTest < ActionController::TestCase
  setup do
    @ngo = ngos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ngos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ngo" do
    assert_difference('Ngo.count') do
      post :create, ngo: { address_line1: @ngo.address_line1, address_line2: @ngo.address_line2, city: @ngo.city, contact_number: @ngo.contact_number, country: @ngo.country, domain_id: @ngo.domain_id, email: @ngo.email, name: @ngo.name, password: @ngo.password, pincode: @ngo.pincode, registration_date: @ngo.registration_date, registration_number: @ngo.registration_number, state: @ngo.state, website: @ngo.website }
    end

    assert_redirected_to ngo_path(assigns(:ngo))
  end

  test "should show ngo" do
    get :show, id: @ngo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ngo
    assert_response :success
  end

  test "should update ngo" do
    put :update, id: @ngo, ngo: { address_line1: @ngo.address_line1, address_line2: @ngo.address_line2, city: @ngo.city, contact_number: @ngo.contact_number, country: @ngo.country, domain_id: @ngo.domain_id, email: @ngo.email, name: @ngo.name, password: @ngo.password, pincode: @ngo.pincode, registration_date: @ngo.registration_date, registration_number: @ngo.registration_number, state: @ngo.state, website: @ngo.website }
    assert_redirected_to ngo_path(assigns(:ngo))
  end

  test "should destroy ngo" do
    assert_difference('Ngo.count', -1) do
      delete :destroy, id: @ngo
    end

    assert_redirected_to ngos_path
  end
end
