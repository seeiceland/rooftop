Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'search', to: 'pages#search'
  resources :roofs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
