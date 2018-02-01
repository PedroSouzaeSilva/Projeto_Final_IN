class User < ApplicationRecord
  has_secure_password
  mount_uploader :avatar, AvatarUploader
  has_many :user_occupations
  has_many :occupations, through: :user_occupations

  validates :name, presence: true, length: { in: 2..20 }
	
  validates :email, presence: true, length: { in: 5..40 }, uniqueness: true

  validates :password, length: { in: 6..12 }, allow_nil: true
	
end
