Rails.application.routes.draw do
  devise_for :users
  get 'payments/new'

  resources :payments
  resource :passwords
  
  #tell rails to take you to welcome controller on request to /
  root 'payments#new'
end
