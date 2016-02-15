require 'test_helper'

class BorrowingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'borrowing title search' do
    borrowings = Borrowing.search('kniha')
    assert_not_empty borrowings
  end

  test 'borrowing username search' do
    borrowings = Borrowing.search('quentin')
    assert_not_empty borrowings
  end
end
