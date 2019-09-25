Rails.application.routes.draw do
  resources :groups
  resources :user_groups
  resources :users
  mount ActionCable.server => "/cable"

  post "/signup", to: "users#create"
  post "/login", to: "auth#login"
  get "/autologin", to: "auth#autologin"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
