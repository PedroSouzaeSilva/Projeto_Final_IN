class Project < ApplicationRecord
  validates_presence_of :name, message: "Insira um nome para o projeto"
  validates_presence_of :deadline, message: "Insira um prazo válido"
  validate :deadline_in_present, :price_is_more_than_cents
  validates :price, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 1000000, message: "Insira um custo válido, entre R$ 0,00 - 1000000,00"}
  
  def price_is_more_than_cents
    errors.add(:price, "Valor inválido para custo") if
    !price.blank? && price % 0.01 > 0
  end
  
  def deadline_in_present
    errors.add(:deadline, "O prazo não pode ser no passado") if
    !deadline.blank? and deadline <= Date.today
  end

  belongs_to :user_manager, :class_name => 'User'
  belongs_to :user_pmo, :class_name => 'User'

  
  #Para relacionar projects com assignmentsproj
  has_many :project_assignmentprojs
  has_many :assignmentprojs, through: :project_assignmentprojs

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
