Rails.application.routes.draw do
  root "homepage#index"
  resources :defenders
  resources :types
end
