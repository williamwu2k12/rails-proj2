Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :cats
  post '/cats/:id/new', to: 'cats#new', as: :new
end
