# config/routes.rb

Rails.application.routes.draw do
  root 'pages#home'

  get '/about', to: 'pages#about', as: 'about'
  get '/projects', to: 'projects#index', as: 'projects'
  get '/contact', to: 'contacts#new', as: 'contact'
  get '/cv', to: 'pages#cv', as: 'cv' # Ajoutez cette ligne pour la page CV

  resources :projects, only: [:index, :show]
  resources :contacts, only: [:new, :create]
end
