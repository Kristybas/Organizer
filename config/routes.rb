Rails.application.routes.draw do
  get 'user_apps/index'
  get 'user_apps/show'
  get 'user_apps/new'
  get 'user_apps/edit'

  devise_for :users
  get "/my_profile/edit", to: "users#edit", as: "edit_my_profile"
  patch "/my_profile/edit", to: "users#update", as: "update_my_profile"
  resources :user_apps

  root to: "pages#home"
  get 'mes_demarches', to: 'user_apps#index'
  get 'new_demarche', to: 'user_apps#new'


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
