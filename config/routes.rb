Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects
  resources :technologies, only: [:index]
  # resources :requirements
  # resources :repositories

  post "/user/login", to: "users#login"
end
