Rails.application.routes.draw do
  root to: 'walls#show'

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  delete 'signout', to: 'sessions#destroy'

  resource :wall, only: :show

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end
