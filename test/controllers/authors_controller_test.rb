require 'test_helper'

class AuthorsControllerTest < ActionController::TestCase
  setup do
    (users (:admin)).add_role :admin
    user = users (:admin)
    sign_in user
    @author = authors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:authors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end


  test "should create author" do
    assert_difference('Author.count') do
      post :create, author: { name:"Artur" }
    end

    assert_redirected_to author_path(assigns(:author))
  end

  test "should show author" do
    get :show, id: @author
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @author
    assert_response :success
  end

  test "should update author" do
    patch :update, id: @author, author: { name: "Jelen" }
    assert_redirected_to author_path(assigns(:author))
  end


  test "should destroy author" do
    assert_difference('Author.count', -1) do
      delete :destroy, id: authors(:autor)
    end

    assert_redirected_to authors_path
  end
end
