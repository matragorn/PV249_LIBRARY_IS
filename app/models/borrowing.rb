class Borrowing < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  def self.search(search)
    borrowings = Set.new
    Borrowing.all.order('due_date ASC').each do |b|
      if b.user.name.include?(search) || b.book.title.include?(search)
        borrowings.add(b)
      end
    end
    borrowings
  end

end
