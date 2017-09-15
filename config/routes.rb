Rails.application.routes.draw do

  namespace :admin do
    resources :users
    resources :projects
    resources :targets

    root to: "users#index"
  end

  mount Ckeditor::Engine => '/ckeditor'
  mount Commontator::Engine => '/commontator'

  #devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
 # resources :users, :only => [:index, :destroy]
 # root :to => 'users#index'

  devise_for :users
  resources :projects do
    resources :targets, shallow: true, except: [:index, :show]

  end
  resources :users do
    patch :change_theme, on: :collection
  end
  root 'projects#index'
end
