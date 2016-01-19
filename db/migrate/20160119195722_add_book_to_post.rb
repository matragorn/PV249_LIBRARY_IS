class AddBookToPost < ActiveRecord::Migration
  def change
    add_reference :posts, :book, index: true, foreign_key: true
  end
end
