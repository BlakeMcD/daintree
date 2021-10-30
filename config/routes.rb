Rails.application.routes.draw do
  resources :address
  resources :items
  resources :stores
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/store/login", to: "sessions#new"
  # post "/store/login", to: "sessions#create"
end
