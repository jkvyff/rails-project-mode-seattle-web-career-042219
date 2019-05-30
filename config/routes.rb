Rails.application.routes.draw do
  resources :place_connections
  resources :items_abilities
  resources :characters_items
  resources :abilities
  resources :items
  resources :places
  resources :characters
  resources :users
  resources :sessions

  root :to=>"users#index"
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
