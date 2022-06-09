Rails.application.routes.draw do
  resources :services
  devise_for :users
  resources :clients
  resources :user_managements

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
