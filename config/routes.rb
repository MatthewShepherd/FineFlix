Rails.application.routes.draw do

  root to: 'films#index'
  get '/categories/:category_id/films', to: 'films#category_index', as: 'category_index'

  resources :users, only: [:new, :create, :show]

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
