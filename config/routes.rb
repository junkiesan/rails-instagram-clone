Rails.application.routes.draw do
  devise_for :accounts

  # Dashoboard
  get '/dashboard' => 'accounts#index'
  get '/profile/:username' => 'accounts#show'

  resources :posts, only: [:new, :create, :show]

  root to: "public#homepage"

end
