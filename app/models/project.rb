class Project < ApplicationRecord
  #Para relacionar projects e teams
  has_many :team_projects
  has_many :teams, through: :team_projects

  def data_correta
    data = "#{deadline.day}/#{deadline.month}/#{deadline.year}"
    data
  end
end
