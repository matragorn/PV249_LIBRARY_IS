class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable


  has_attached_file :avatar, styles: { thumb: "100x100>" },
                    :default_url => "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: %r{\Aimage\/.*\Z}
end
