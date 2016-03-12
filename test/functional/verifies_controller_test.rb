require 'test_helper'

class VerifiesControllerTest < ActionController::TestCase
  setup do
    @verify = verifies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:verifies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create verify" do
    assert_difference('Verify.count') do
      post :create, verify: {  }
    end

    assert_redirected_to verify_path(assigns(:verify))
  end

  test "should show verify" do
    get :show, id: @verify
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @verify
    assert_response :success
  end

  test "should update verify" do
    put :update, id: @verify, verify: {  }
    assert_redirected_to verify_path(assigns(:verify))
  end

  test "should destroy verify" do
    assert_difference('Verify.count', -1) do
      delete :destroy, id: @verify
    end

    assert_redirected_to verifies_path
  end
end
