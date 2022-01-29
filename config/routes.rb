Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  resources :users, only: %i[] do
    get :profile
  end

  resources :categories do
  end
end
