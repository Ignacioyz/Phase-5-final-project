Rails.application.routes.draw do
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  resources :carts
  resources :paintings
  resources :users, only: [:create, :index]

  get "/me", to: "users#show"
  post '/signup', to: "users#create"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  patch "/buy/:id", to: "carts#add_to_cart"
  get "/users_chosen", to: "paintings#users_chosen"
  post "/users", to: "users#create"
  post "/paintings", to: "paintings#create"
end
