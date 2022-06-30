Rails.application.routes.draw do
  root "pages#welcome"
  devise_for :contributors, :controllers => { registrations: 'contributors/registrations' }
  resources :contributors, only: [:index, :show]
  resources :recipes
  resources :ingredients
  resources :blogs
  
end
