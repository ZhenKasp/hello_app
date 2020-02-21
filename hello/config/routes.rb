Rails.application.routes.draw do

  get 'about' => 'pages#about'

  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

    root 'posts#index', as: 'home'
end
