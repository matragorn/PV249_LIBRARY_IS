class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  validates :title, presence:true
  validates :body, presence:true
  validates :user, presence:true
  validates :book, presence:true

end
