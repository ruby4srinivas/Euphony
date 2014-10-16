require 'test_helper'

class GenreLanguagesControllerTest < ActionController::TestCase
  setup do
    @genre_language = genre_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:genre_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create genre_language" do
    assert_difference('GenreLanguage.count') do
      post :create, genre_language: {  }
    end

    assert_redirected_to genre_language_path(assigns(:genre_language))
  end

  test "should show genre_language" do
    get :show, id: @genre_language
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @genre_language
    assert_response :success
  end

  test "should update genre_language" do
    patch :update, id: @genre_language, genre_language: {  }
    assert_redirected_to genre_language_path(assigns(:genre_language))
  end

  test "should destroy genre_language" do
    assert_difference('GenreLanguage.count', -1) do
      delete :destroy, id: @genre_language
    end

    assert_redirected_to genre_languages_path
  end
end
