Rails.application.routes.draw do
  get 'user_apps/index'
  get 'user_apps/show'
  get 'user_apps/new'
  get 'user_apps/edit'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  devise_for :users
  root to: "pages#home"
  get 'mes_demarches', to: 'user_apps#index'
  get 'new_demarche', to: 'user_apps#new'

  resources :users
  get '/demenagement', to: 'users#je_demenage', as: 'je_demenage'
  get '/chanement_rib', to: 'users#rib', as: 'rib'

  # Correction de cette ligne
  resources :user_apps
end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.


  # Defines the root path route ("/")
  # root "posts#index"
