# config/routes.rb

Rails.application.routes.draw do
  root 'pages#home'

  get '/about', to: 'pages#about', as: 'about'
  get '/projects', to: 'projects#index', as: 'projects'
  get '/contact', to: 'contacts#new', as: 'contact'

  resources :projects, only: [:index, :show]
  resources :contacts, only: [:new, :create]
  resources :blogs, only: [:index, :show, :new]
end
