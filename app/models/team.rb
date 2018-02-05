class Team < ApplicationRecord
  #Para relacionar users e teams
  has_many :user_teams
  has_many :users, through: :user_teams
end
