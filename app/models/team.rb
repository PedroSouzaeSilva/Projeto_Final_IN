class Team < ApplicationRecord
  validates_presence_of :name, message: "Insira um nome para o time"
  
  #Para relacionar users e teams
  has_many :user_teams
  has_many :users, through: :user_teams

  #Para relacionar projects e teams
  has_many :team_projects
  has_many :projects, through: :team_projects

end
