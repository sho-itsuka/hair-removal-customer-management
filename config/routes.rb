Rails.application.routes.draw do
  devise_for :users
  root to: 'customers#index'
  resources :customers, only: %i[index new create show edit update] do
    resources :hair_removals, only: %i[index new create show]
  end
end