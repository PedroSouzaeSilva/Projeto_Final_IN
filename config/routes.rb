Rails.application.routes.draw do

  get 'new_password/search', to: "new_password#search", as: :new_password
  post 'new_password/search', to: "new_password#recovery"

  resources :projects
  root to: "sessions#new"
  get 'login', to: "sessions#new", as: :login

  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy", as: :logout

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
