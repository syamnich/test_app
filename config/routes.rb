Rails.application.routes.draw do
  get 'users/new'

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  delete 'signout', to: 'sessions#destroy'

  root to: 'walls#show'

  resource :wall, only: :show

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end
