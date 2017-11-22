Rails.application.routes.draw do

  resources :articles do
    resources :comments
  end

  root 'articles#index'

  resource :session

  resources :users

  get '/signup' => 'users#new', as: 'signup'
  get '/login' => 'sessions#new', as: 'login'

end
