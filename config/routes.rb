Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  resources :artists
  resources :modalities
  resources :institutions

  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for "User", at: 'auth'
    end
  end

  namespace :api, defaults: { format: :json } do
    scope module: :v1, path: :v1 do
      resources :artists, only: [:create, :index]
    end
  end
end
