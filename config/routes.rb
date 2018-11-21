Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # resources :users, only: :show
  get 'search', to: 'pages#search'
  get 'dashboard', to: 'users#profile'
  resources :roofs do
    resources :bookings, only: :create
  end
  resources :bookings, only: :index
end
