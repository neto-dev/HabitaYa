require 'test_helper'

class PublicationsControllerTest < ActionController::TestCase
  setup do
    @publication = publications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publication" do
    assert_difference('Publication.count') do
      post :create, publication: { bathrooms: @publication.bathrooms, closets: @publication.closets, date: @publication.date, description: @publication.description, floor_loc: @publication.floor_loc, floors: @publication.floors, garage: @publication.garage, old: @publication.old, price: @publication.price, rooms: @publication.rooms, size: @publication.size, status: @publication.status, title: @publication.title, type: @publication.type, typead: @publication.typead, user_id: @publication.user_id }
    end

    assert_redirected_to publication_path(assigns(:publication))
  end

  test "should show publication" do
    get :show, id: @publication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publication
    assert_response :success
  end

  test "should update publication" do
    patch :update, id: @publication, publication: { bathrooms: @publication.bathrooms, closets: @publication.closets, date: @publication.date, description: @publication.description, floor_loc: @publication.floor_loc, floors: @publication.floors, garage: @publication.garage, old: @publication.old, price: @publication.price, rooms: @publication.rooms, size: @publication.size, status: @publication.status, title: @publication.title, type: @publication.type, typead: @publication.typead, user_id: @publication.user_id }
    assert_redirected_to publication_path(assigns(:publication))
  end

  test "should destroy publication" do
    assert_difference('Publication.count', -1) do
      delete :destroy, id: @publication
    end

    assert_redirected_to publications_path
  end
end
