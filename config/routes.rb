Rails.application.routes.draw do
  resources :address
  resources :items
  resources :stores
  resources :users

  #User Session
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  post "/logout", to: "sessions#destroy"
  #STORE SESSION - Not active
  # get "/store/login", to: "sessions#new"
  # post "/store/login", to: "sessions#create"
end
