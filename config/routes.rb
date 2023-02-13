Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
end
