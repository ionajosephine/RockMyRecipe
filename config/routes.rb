Rails.application.routes.draw do
  root "pages#welcome"
  devise_for :contributors, :controllers => { registrations: 'contributors/registrations' }
  resources :contributors, only: [:index, :show]
  resources :ingredients
  resources :blogs

  resources :recipes do
    resources :likes, shallow: true, only: [:create, :destroy]
  end
  
end
