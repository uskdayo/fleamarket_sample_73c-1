Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :items, only: [:new]
  get 'categories/get_child', to: "categories#get_child"
end
