Rails.application.routes.draw do
  root :to => "welcome#index"

  get 'welcome/index'
  get '/login' => 'sessions#new'
  get '/signup' => 'users#create'

  get 'register' => 'trucks#new', :as => :register
  get 'companies/create'
  get 'users/create'
  post '/login' => 'sessions#new'
  post '/logout' => 'sessions#destroy', :as => :logout
  post '/sessions/create' => 'sessions#create'
end
