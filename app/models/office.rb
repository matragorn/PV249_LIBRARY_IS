class Office < ActiveRecord::Base

  validates :name, presence:true, uniqueness: true
  validates :address, presence:true
  validates :contact, presence:true

  resourcify
end
