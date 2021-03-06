class Assignmentproj < ApplicationRecord
  validates_presence_of :name, message: "Insira o nome da tarefa"
  
  #Para relacionar users com assignmentsproj
  has_many :user_assignmentprojs
  has_many :users, through: :user_assignmentprojs

  #Para relacionar projects com assignmentsproj
  has_many :project_assignmentprojs
  has_many :projects, through: :project_assignmentprojs

  #Para relacionar users com assignmentsproj
  has_many :user_assignmentprojs
  has_many :assignmentprojs, through: :user_assignmentprojs

end
