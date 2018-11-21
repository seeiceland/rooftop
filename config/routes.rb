Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get 'search', to: 'pages#search'
  get 'dashboard', to: 'users#profile'
  resources :roofs do
    resources :bookings, only: :create
  end
  resources :bookings, only: :index
end
