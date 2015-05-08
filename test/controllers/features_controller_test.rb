require 'test_helper'

class FeaturesControllerTest < ActionController::TestCase
  setup do
    @feature = features(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:features)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feature" do
    assert_difference('Feature.count') do
      post :create, feature: { bathrooms: @feature.bathrooms, closets: @feature.closets, date: @feature.date, description: @feature.description, floor_loc: @feature.floor_loc, floors: @feature.floors, garage: @feature.garage, old: @feature.old, price: @feature.price, rooms: @feature.rooms, size: @feature.size, status: @feature.status, title: @feature.title, type: @feature.type, typead: @feature.typead, user_id: @feature.user_id }
    end

    assert_redirected_to feature_path(assigns(:feature))
  end

  test "should show feature" do
    get :show, id: @feature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feature
    assert_response :success
  end

  test "should update feature" do
    patch :update, id: @feature, feature: { bathrooms: @feature.bathrooms, closets: @feature.closets, date: @feature.date, description: @feature.description, floor_loc: @feature.floor_loc, floors: @feature.floors, garage: @feature.garage, old: @feature.old, price: @feature.price, rooms: @feature.rooms, size: @feature.size, status: @feature.status, title: @feature.title, type: @feature.type, typead: @feature.typead, user_id: @feature.user_id }
    assert_redirected_to feature_path(assigns(:feature))
  end

  test "should destroy feature" do
    assert_difference('Feature.count', -1) do
      delete :destroy, id: @feature
    end

    assert_redirected_to features_path
  end
end
