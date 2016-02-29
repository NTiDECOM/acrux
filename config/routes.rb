Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  resources :artists
  resources :modalities
  resources :institutions
end
