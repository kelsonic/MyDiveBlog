Rails.application.routes.draw do
  
  # Homepage
  root 'pages#home'
  
  # User Sessions and Sign Up Page
  get '/signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  # Articles, Users, Categories
  resources :articles
  resources :users, except: [:new]
  resources :categories, except: [:destroy]
  
end
