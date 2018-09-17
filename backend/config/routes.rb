Rails.application.routes.draw do
  root 'organizations#index'
  resources :users
  resources :organizations, only: [:index, :show]
end
