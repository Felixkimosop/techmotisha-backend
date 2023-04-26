Rails.application.routes.draw do
  resources :replies
  resources :comments

  post 'signup', to: 'users#create'
  post 'login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
  get 'profile', to: 'users#profile'
  patch 'edit', to: 'users#edit'
  patch 'deactivate/:id', to: 'users#deactivate'
  get "/subscriptions", to: "subscriptions#index"
  get "/wishes", to: "wishlists#index"
  get '/uploads', to: 'contents#uploads'
  get '/uploads/:id', to: 'contents#uploads'
  get '/videos', to: 'contents#videos'
  get '/audios', to: 'contents#audios'
  get '/pdfs', to: 'contents#pdfs'
  post '/api/videos/:id/likes', to: 'likes#create'














  resources :categories, only: [:index, :show, :create, :update, :destroy]
  resources :contents, only: [:index, :show, :create, :update, :destroy]
  resources :comments, only: [:index, :show, :create, :update, :destroy]
  resources :subscriptions, only: [:index, :create, :destroy]
  resources :users, only: [:index, :create, :show, :update]


  resources :wishlists, only: [:index]


end
