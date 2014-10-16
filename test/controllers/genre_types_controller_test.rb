require 'test_helper'

class GenreTypesControllerTest < ActionController::TestCase
  setup do
    @genre_type = genre_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:genre_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create genre_type" do
    assert_difference('GenreType.count') do
      post :create, genre_type: {  }
    end

    assert_redirected_to genre_type_path(assigns(:genre_type))
  end

  test "should show genre_type" do
    get :show, id: @genre_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @genre_type
    assert_response :success
  end

  test "should update genre_type" do
    patch :update, id: @genre_type, genre_type: {  }
    assert_redirected_to genre_type_path(assigns(:genre_type))
  end

  test "should destroy genre_type" do
    assert_difference('GenreType.count', -1) do
      delete :destroy, id: @genre_type
    end

    assert_redirected_to genre_types_path
  end
end
