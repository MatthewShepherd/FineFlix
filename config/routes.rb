Rails.application.routes.draw do

  root to: 'films#index'

  resources :users, only: [:new, :create, :show]

  resources :sessions, only: [:new, :create]

  resources :categories, only: [:index, :show] do
    resources :films, only: [:index, :show]
  end

  resources :films, only: [:index, :show] do
    resources :ratings
    resources :comments
    resources :reviews
  end

  resources :reviews do
    resources :ratings
    resources :comments
  end

end
