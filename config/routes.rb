Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/index'
  devise_for :users
  root 'categories#index'
  resources :foods, only: [:new, :create, :edit, :update, :destroy] do
    resource :recipes, only: [:create]
  end
  resources :recipes, only: [:index, :show, :edit, :update, :destroy] do
    resources :foods do
      resources :compounds, only:[:create]
    end
    resources :compounds
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
