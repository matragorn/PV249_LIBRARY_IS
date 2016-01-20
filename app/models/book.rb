class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :office
  has_and_belongs_to_many :tags

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    where("description LIKE ?", "%#{search}%")
  end
end
