Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'films#index'

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
