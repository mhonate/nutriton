Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/index'
  get 'pages/tablefilter'
  devise_for :users
  root to: "pages#index"
  resources :compounds
  resources :recipes
  resources :foods, only: [:new, :create, :edit, :update, :destroy]
  resources :sources
  resources :subcategories, only: [:new, :create, :edit, :update, :destroy] do
    resources :foods, only: [:index]
  end
  resources :categories do
    resources :subcategories, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
