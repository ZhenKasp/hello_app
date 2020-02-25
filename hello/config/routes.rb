Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'

  get 'about' => 'about#index'
  resources :users, only: :show
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
end
