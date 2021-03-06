Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'posts#index'

  get 'about' => 'about#index'

  resources :users, only: [:show, :update, :edit]
  resources :posts do
  resources :comments, only: [:create, :destroy]
  end
end
