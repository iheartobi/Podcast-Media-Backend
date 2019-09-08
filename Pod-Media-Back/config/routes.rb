Rails.application.routes.draw do
  resources :likes
  resources :posts
  resources :podcasts
  resources :subscriptions
  resources :comments
  resources :relationships
  resources :users
  post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      # patch '/updateprofile', to: 'users#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
