Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "trainers#index"
  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
  resources :trainers, only: [:index, :show]
end
