require 'test_helper'

class UbicationsControllerTest < ActionController::TestCase
  setup do
    @ubication = ubications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ubications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ubication" do
    assert_difference('Ubication.count') do
      post :create, ubication: { city: @ubication.city, colony: @ubication.colony, country: @ubication.country, number_in: @ubication.number_in, number_out: @ubication.number_out, postal: @ubication.postal, publication_id: @ubication.publication_id, street: @ubication.street, town: @ubication.town }
    end

    assert_redirected_to ubication_path(assigns(:ubication))
  end

  test "should show ubication" do
    get :show, id: @ubication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ubication
    assert_response :success
  end

  test "should update ubication" do
    patch :update, id: @ubication, ubication: { city: @ubication.city, colony: @ubication.colony, country: @ubication.country, number_in: @ubication.number_in, number_out: @ubication.number_out, postal: @ubication.postal, publication_id: @ubication.publication_id, street: @ubication.street, town: @ubication.town }
    assert_redirected_to ubication_path(assigns(:ubication))
  end

  test "should destroy ubication" do
    assert_difference('Ubication.count', -1) do
      delete :destroy, id: @ubication
    end

    assert_redirected_to ubications_path
  end
end
