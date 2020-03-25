Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :characters
  resources :users

  post "/signup", to: "users#create"
  post "/login", to: "auth#login"
  

end
