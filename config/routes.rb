Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'sessions#welcome'
  match 'auth/:provider/callback', to: 'sessions#omniauth', via: [:get, :post] 

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  resources :donuts do 
    resources :reviews, only: [:new, :edit]
  end

  resources :reviews, except: [:index, :new]

  
  resources :users
end
