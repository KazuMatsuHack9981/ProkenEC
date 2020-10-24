Rails.application.routes.draw do
  devise_for :users
  #devise_for :users, :controllers => {
    #:registrations => 'users/registrations'
  #}

  resources :homepage, only: [:index]
  resources :credit_card_page
  post "credit_card_page/confirmation"
  resources :comment_page
  
  root to: "homepage#index"
end
