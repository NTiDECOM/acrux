Rails.application.routes.draw do
  root to: 'home#index'

  resources :artists
  resources :modalities
end
