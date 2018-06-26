Rails.application.routes.draw do
  resources :organizations, only: [:index, :show]  
end
