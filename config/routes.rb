Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :cats
  resources :comments
  post '/cats/:id/new', to: 'cats#new', as: :new
  patch 'cats/:id/show', to: 'cats#show', as: :show
  patch '/comments/upvote', to: 'comments#upvote' , as: :upvote
  patch '/comments/downvote', to: 'comments#downvote' , as: :downvote
end
