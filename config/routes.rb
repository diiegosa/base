Rails.application.routes.draw do
  resources :home, only: [:index]
  root to: 'home#index'
  post '/', to: 'home#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }, skip: [:registrations, :passwords]

  resources :users
  resources :profiles


end
