Rails.application.routes.draw do
  resources :reviews
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #index

  # get '/donuts', to: 'donuts#index', as: 'donut'
  # get '/donuts/:id' to: 'donuts#show', as: 'donut'

  resources :donuts 

  #show
end
