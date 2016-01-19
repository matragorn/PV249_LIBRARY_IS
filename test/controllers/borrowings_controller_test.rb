require 'test_helper'

class BorrowingsControllerTest < ActionController::TestCase
  setup do
    @borrowing = borrowings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:borrowings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create borrowing" do
    assert_difference('Borrowing.count') do
      post :create, borrowing: { book_id: @borrowing.book_id, due_date: @borrowing.due_date, user_id: @borrowing.user_id }
    end

    assert_redirected_to borrowing_path(assigns(:borrowing))
  end

  test "should show borrowing" do
    get :show, id: @borrowing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @borrowing
    assert_response :success
  end

  test "should update borrowing" do
    patch :update, id: @borrowing, borrowing: { book_id: @borrowing.book_id, due_date: @borrowing.due_date, user_id: @borrowing.user_id }
    assert_redirected_to borrowing_path(assigns(:borrowing))
  end

  test "should destroy borrowing" do
    assert_difference('Borrowing.count', -1) do
      delete :destroy, id: @borrowing
    end

    assert_redirected_to borrowings_path
  end
end
