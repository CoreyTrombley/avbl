Avbl::Application.routes.draw do

  match "/dashboard", :to => 'dashboard#index'
  get "splash/index"

  resources :friendships

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  get 'tags/:tag', to: 'projects#index', as: :tag
  resources :projects
  root :to => 'splash#index'
  get '/beta' => 'splash#index', :via => :get
  
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  match '/users/:id', :to => 'users#show', :as => :user
end
