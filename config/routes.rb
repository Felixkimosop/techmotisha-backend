Rails.application.routes.draw do
  resources :replies
 
  post 'signup', to: 'users#create'
  post 'login', to: 'sessions#create'
  get 'profile', to: 'users#profile'
  patch 'edit', to: 'users#edit'
patch 'deactivate/:id', to: 'users#deactivate'
get "/subscriptions", to: "subscriptions#index"
get "/wishes", to: "wishlists#index"







  
  

  resources :categories, only: [:index, :show, :create, :update, :destroy]
  resources :contents, only: [:index, :show, :create, :update, :destroy]
  resources :comments, only: [:index, :show, :create, :update, :destroy]
  resources :subscriptions, only: [:index, :create, :destroy]
  resources :users, only: [:index, :create, :show, :update]
    

  resources :wishlists, only: [:index]


end
