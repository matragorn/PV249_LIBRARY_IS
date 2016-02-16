require 'test_helper'

class BookTest < ActiveSupport::TestCase
  self.use_instantiated_fixtures = true

  # test "the truth" do
  #   assert true
  # end

  test 'book search' do
    books = Book.search('kniha')
    assert_not_empty books
  end

  test 'free books search' do
    books = Book.free_books
    assert_not_empty books
    assert_equal(books.count, 1)
  end

  test 'book borrowed' do
    assert_equal(true, Book.borrowed?(books(:kniha)))
    assert_equal(false, Book.borrowed?(books(:freeBook)))
  end
end
