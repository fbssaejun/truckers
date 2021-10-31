Rails.application.routes.draw do


  resources :trucks do
  end
  
  root :to => "welcome#index"



  get 'welcome/index'
  get 'sessions/new'
  get 'users/create'
  get '/trucks' => 'trucks#index'
  get 'register' => 'trucks#new', :as => :register
  get 'companies/create'

  post 'users/create'
  post '/sessions/new' => 'sessions#new', :as => :login
  get '/logout' => 'sessions#destroy', :as => :logout
  post '/sessions/create'
end
