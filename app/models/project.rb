class Project < ApplicationRecord

  belongs_to :user_manager, :class_name => 'User'
  belongs_to :user_pmo, :class_name => 'User'

  #Para relacionar users e projects
  has_many :user_projects
  has_many :users, through: :user_projects

  #Para relacionar projects e teams
  has_many :team_projects
  has_many :teams, through: :team_projects

  def data_correta
    data = "#{deadline.day}/#{deadline.month}/#{deadline.year}"
    data
  end
end
