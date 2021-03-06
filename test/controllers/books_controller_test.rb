require 'test_helper'

class BooksControllerTest < ActionController::TestCase

#  include AuthenticatedTestHelper
#  fixtures :users

  setup do
   user = users (:admin)
   sign_in user
   @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { author_id: authors(:two).id, description: "test", office_id: offices(:two).id, title: "ppppppt" }
    end
    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do

    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { author: authors(:one), description: "aaaa", office: offices(:one), title:  "tts"  }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: books(:freeBook)
    end

    assert_redirected_to books_path
  end
end
