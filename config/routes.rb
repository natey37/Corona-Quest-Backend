Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, :create do
    collection do
      post 'confirm'
      post 'login'
    end
  end
  
  resources :characters

end
