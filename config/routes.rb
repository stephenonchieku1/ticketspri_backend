Rails.application.routes.draw do
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :customers
  resources :vehicles
  resources :routes
  resources :seats
  resources :bookings
  resources :saccos
  resources :selectedseats

  get '/customer/me', to: 'sessions#show_customer'
  post '/customer/signup',  to: "customers#create"
  post '/customer/login', to: 'sessions#customer_login'
  delete '/customer/logout', to: 'sessions#customer_logout'

  get '/sacco/me', to: 'sessions#show_sacco'
  post '/sacco/signup',  to: "saccos#create"
  post '/sacco/login', to: 'sessions#sacco_login'
  delete '/sacco/logout', to: 'sessions#sacco_logout'

  get '/sacco/me', to: 'sessions#show_sacco'
  post '/sacco/signup',  to: "saccos#create"
  post '/sacco/login', to: 'sessions#sacco_login'
  delete '/sacco/logout', to: 'sessions#sacco_logout'

end
