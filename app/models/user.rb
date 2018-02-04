class User < ApplicationRecord
  has_secure_password

  mount_uploader :avatar, AvatarUploader

  #Para relacionar users e teams
  has_many :user_teams
  has_many :teams, through: :user_teams

  #Para relacionar users e directions
  has_many :user_directions
  has_many :directions, through: :user_directions

  #Para relacionar users e occupations
  has_many :user_occupations
  has_many :occupations, through: :user_occupations

  validates :name, presence: true, length: { in: 2..20 }

  validates :email, presence: true, length: { in: 5 .. 40 }, uniqueness: true,
  format: { with: /\A[a-z]{2,20}\.[a-z]{2,20}\@injunior.com.br\z/,
  message: "Por favor, insira um email nome.sobrenome@injunior.com.br"}
  validates :password, length: { in: 6..12 }, allow_nil: true
  #validates :avatar, presence: true


end
