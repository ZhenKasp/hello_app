Rails.application.routes.draw do

  get 'about' => 'pages#about'

  resources :posts do
    resources :comments
  end
    root 'posts#index', as: 'home'
end
