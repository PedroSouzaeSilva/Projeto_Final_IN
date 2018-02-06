class UserProject < ApplicationRecord
  #Relacionar as tabelas "usuarios" e "projetos"
  belongs_to :project
  belongs_to :user
end
