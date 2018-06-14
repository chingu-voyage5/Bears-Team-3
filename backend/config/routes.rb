Rails.application.routes.draw do
  resources :counters, only: [:index, :create]
end
