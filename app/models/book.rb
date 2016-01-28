class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :office
  has_and_belongs_to_many :tags
  has_many :posts

  validates :title, presence:true, uniqueness: true
  validates :author, presence:true
  validates :office, presence:true

  def self.search(search)
    where("title LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")
  end

  def self.free_books
    free = Array.new
    Book.all.order('title ASC').each do |book|
      free.push(book)
    end
    Borrowing.all.each do |b|
      if free.include?(b.book)
        free.delete(b.book)
      end
    end
    free
  end


  def self.borrowed?(book)
    Borrowing.all.each do |b|
      if b.book == book
        return true
      end
    end
    false
  end

  resourcify
end
