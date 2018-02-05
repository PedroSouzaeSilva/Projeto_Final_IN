class Project < ApplicationRecord
  #Para relacionar projects e teams
  has_many :team_projects
  has_many :teams, through: :team_projects
end
