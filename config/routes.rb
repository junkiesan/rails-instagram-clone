Rails.application.routes.draw do
  devise_for :accounts

  # Dashoboard
  get '/dashboard' => 'accounts#index'
  
  resources :posts, only: [:new, :create, :show]

  root to: "public#homepage"

end
