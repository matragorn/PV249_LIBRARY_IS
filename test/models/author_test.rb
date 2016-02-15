require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'author search' do
    authors = Author.search('autor')
    assert_not_empty authors
  end
end
