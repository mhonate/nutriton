Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/index'
  devise_for :users
  root 'categories#index'
  resources :compounds
  resources :foods, only: [:new, :create, :edit, :update, :destroy] do
    resource :recipes
  end
  resources :sources
  resources :subcategories, only: [:new, :create, :edit, :update, :destroy] do
    resources :foods, only: [:index]
  end
  resources :categories do
    resources :subcategories, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
