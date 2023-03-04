Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :articles
  resources :users, except: [:new]

  get 'signup', to: 'users#new'

  post 'users', to: 'users#create'

end
