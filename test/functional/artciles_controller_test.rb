require 'test_helper'

class ArtcilesControllerTest < ActionController::TestCase
  setup do
    @artcile = artciles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artciles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artcile" do
    assert_difference('Artcile.count') do
      post :create, artcile: { content: @artcile.content, name: @artcile.name }
    end

    assert_redirected_to artcile_path(assigns(:artcile))
  end

  test "should show artcile" do
    get :show, id: @artcile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artcile
    assert_response :success
  end

  test "should update artcile" do
    put :update, id: @artcile, artcile: { content: @artcile.content, name: @artcile.name }
    assert_redirected_to artcile_path(assigns(:artcile))
  end

  test "should destroy artcile" do
    assert_difference('Artcile.count', -1) do
      delete :destroy, id: @artcile
    end

    assert_redirected_to artciles_path
  end
end
