Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, :skip => [:registrations]                                          
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'    
    put 'users' => 'devise/registrations#update', :as => 'user_registration'            
  end

  get 'payments/new'

  resources :payments
  
  #tell rails to take you to welcome controller on request to /
  root 'payments#new'
end
