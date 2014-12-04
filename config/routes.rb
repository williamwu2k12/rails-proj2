Rails.application.routes.draw do
  root to: 'cats#index'
  devise_for :users
  resources :users
  resources :cats
  resources :comments
  resources :favorites
  post '/cats/:id/new', to: 'cats#new', as: :new
  patch 'cats/:id/show', to: 'cats#show', as: :show
  get '/cat/top', to: 'cats#top'
  get '/user/:id/comments', to: 'users#comments'
  get '/cats/:id/showsorted', to: 'cats#showsorted', as: :showsorted
end
