Rails.application.routes.draw do
  resources :microsposts
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  root "users#index"
  get "/microsposts", to: "microsposts#index"
  
end
