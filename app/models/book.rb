class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :office
  has_and_belongs_to_many :tags
end
