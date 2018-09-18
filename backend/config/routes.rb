Rails.application.routes.draw do
  root 'welcome#home'
  resources :users
  resources :organizations, only: [:index, :show]
  resources :sessions, only: [:create, :delete]

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/logout', to: "sessions#destroy"
end
