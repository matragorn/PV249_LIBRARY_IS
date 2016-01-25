class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :office
  has_and_belongs_to_many :tags
  has_many :posts

  def self.search(search)
    where("title LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")
  end

  resourcify
end
