Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #index

  # get '/donuts', to: 'donuts#index', as: 'donut'
  # get '/donuts/:id' to: 'donuts#show', as: 'donut'

  get 'signup' => 'users#new'
  post 'signup' => 'users#create'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  resources :donuts 
  resources :reviews
  resources :users

  #show
end
