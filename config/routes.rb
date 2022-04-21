Rails.application.routes.draw do
  devise_for :users
  root to: 'customers#index'
  resources :customers, only: %i[index new create show edit update]
end