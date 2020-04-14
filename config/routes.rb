Rails.application.routes.draw do

  devise_for :accounts
  resources :properties

  get "/dashboard" => 'dashboard#index', as: :dashboard
  get "/profile/:id" => 'dashboard#profile', as: :profile


  root 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
