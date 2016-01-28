class Author < ActiveRecord::Base

  validates :name, presence:true, uniqueness: true

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end

end
