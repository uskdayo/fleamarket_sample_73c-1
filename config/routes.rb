Rails.application.routes.draw do
  devise_for :users
  root 'top_page#index'
  resources :users, only: :show
end
