Avbl::Application.routes.draw do

  match "/dashboard", :to => 'dashboard#index'

  resources :friendships
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  get 'tags/:tag', to: 'projects#index', as: :tag
  resources :projects do
    resources :comments
  end
  #root :to => 'splash#index'
  match "/beta", :to => "splash#index"
  
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/beta')
  match 'signout', to: 'sessions#destroy', as: 'signout'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  match '/users/:id', :to => 'users#show', :as => :user
end
