Rails.application.routes.draw do
  
  # Homepage
  root 'pages#home'
  
  # About and Signup Pages
  get '/about', to: 'pages#about'
  get '/signup', to: 'users#new'
  
  # User Sessions
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  # Articles, Users, Categories
  resources :articles
  resources :users, except: [:new]
  resources :categories, except: [:destroy]
  
end
