Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  resources :projects
  resources :users do
    patch :change_theme, on: :collection
  end
  root 'projects#index'
end
