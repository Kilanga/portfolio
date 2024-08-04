# config/routes.rb

Rails.application.routes.draw do
  root 'pages#home'
  get 'cv', to: 'pages#cv'

  resources :projects, only: [:index, :show]
  resources :contacts, only: [:new, :create]
end
