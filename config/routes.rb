Rails.application.routes.draw do
  devise_for :accounts

  # Dashoboard
  get '/dashboard' => 'accounts#index'
  root to: "public#homepage"
end
