Rails.application.routes.draw do

  resources :assignmentprojs
  resources :goals
  resources :teams
  get 'new_password/search', to: "new_password#search", as: :new_password
  post 'new_password/search', to: "new_password#recovery"

  resources :projects
  root to: "sessions#new"
  get 'login', to: "sessions#new", as: :login

  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy", as: :logout

  resources :users

  #rota para o "feed" de diretorias
  get 'directions', to: "directions#index", as: :directions

  #Rotas para as páginas da presidências
  get 'directions/gp', to: "directions#gp", as: :gp
  get 'directions/marketing', to: "directions#marketing", as: :marketing
  get 'directions/financeiro', to: "directions#financeiro", as: :financeiro
  get 'directions/projetos', to: "directions#projetos", as: :projetos
  get 'directions/presidencia', to: "directions#presidencia", as: :presidencia


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
