Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get "sessions/new"

  root "static_pages#home"
  get "users/new"
  get "static_pages/home"
  get "static_pages/home"
  get "static_pages/about"
  get "static_pages/help"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  post "/signup",  to: "users#create"
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
