Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #index

  # get '/donuts', to: 'donuts#index', as: 'donut'
  # get '/donuts/:id' to: 'donuts#show', as: 'donut'

  root 'sessions#welcome'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  resources :donuts do 
    resources :reviews 
  end

  resources :reviews 

  
  resources :users

  #show
end
