Rails.application.routes.draw do

  get 'sessions/new'
  resources :sessions
  
  resources :users

  resources :articles do
    resources :comments
  end
  
  root 'articles#index'

  get '/signup' => 'users#new', as: 'signup'
  get '/login' => 'sessions#new', as: 'login'

end
