Rails.application.routes.draw do
  get 'welcome/index'

  resources :payments
  
  #tell rails to take you to welcome controller on request to /
  root 'welcome#index'
end
