Rails.application.routes.draw do
  resources :podcasts
  resources :subscriptions
  resources :comments
  resources :relationships
  resources :users
  post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
