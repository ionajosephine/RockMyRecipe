Rails.application.routes.draw do
  root "recipes#index"
  devise_for :contributors, :controllers => { registrations: 'contributors/registrations' }
  #get '/contributors', to: '/contributors#index'

  resources :contributors, only: [:index, :show]
  resources :recipes
end
