class Direction < ApplicationRecord
  has_many :user_directions
  has_many :users, through: :user_directions
end
