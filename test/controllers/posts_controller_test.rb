require 'test_helper'

class PostsControllerTest < ActionController::TestCase

  setup do
    (users (:admin)).add_role :admin
    user = users (:admin)
    sign_in user
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      user = users(:one)
      book = books(:kniha)
      post :create, post: { body: "body", title: "title", user_id: user.id, book_id: book.id}
    end
    assert_redirected_to book_path(assigns(:book))
  end


  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    patch :update, id: @post, post: { body: "body", title: "title", user: users(:admin) }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: posts(:post)
    end
    assert_redirected_to book_path(assigns(:book))
  end
end
