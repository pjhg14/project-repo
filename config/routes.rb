Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects
  resources :technologies, only: [:index, :create, :destroy]
  resources :requirements, only: [:create, :update, :destroy]
  resources :repositories, only: [:create, :update, :destroy]

  post "/user/login", to: "users#login"
  post "/upload/:id", to: "projects#upload"
end
