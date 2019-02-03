Rails.application.routes.draw do
  resources :compounds
  resources :recipes
  resources :foods
  resources :sources
  resources :subcategories
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
