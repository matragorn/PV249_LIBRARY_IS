require 'test_helper'

class BorrowingsControllerTest < ActionController::TestCase
  setup do
    user = users (:admin)
    sign_in user
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

  test "should not_create borrowing_book_already_borrowed" do
    assert_no_difference('Borrowing.count') do
      post :create, borrowing: { book_id: books(:one).id, due_date: DateTime.now, user_id: users(:quentin).id }
    end
  end


  test "should create borrowing" do
    assert_difference('Borrowing.count') do
      post :create, borrowing: { book_id: books(:freeBook).id, due_date: DateTime.now, user_id: users(:quentin).id }
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
    patch :update, id: @borrowing, borrowing: {book: books(:one), due_date: DateTime.now, user: users(:quentin)  }
    assert_redirected_to borrowing_path(assigns(:borrowing))
  end

  test "should destroy borrowing" do
    assert_difference('Borrowing.count', -1) do
      delete :destroy, id: @borrowing
    end

    assert_redirected_to borrowings_path
  end
end
