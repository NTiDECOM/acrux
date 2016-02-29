Rails.application.routes.draw do
  root to: 'home#index'

  resources :artists
  resources :modalities
  resources :institutions
end
