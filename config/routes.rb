Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root 'items#index'
  resources :items, except: :index
  get 'categories/get_child', to: "categories#get_child"

  resources :purchases do
    collection do
      post :confirm 
    end
  end
  resources :items do
    resources :favorites, only: [:index, :create, :destroy]
  end
end
