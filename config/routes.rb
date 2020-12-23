Rails.application.routes.draw do
  get 'payment_page/index'
  get 'payment_page/success'
  devise_for :users
  #devise_for :users, :controllers => {
    #:registrations => 'users/registrations'
  #}

  resources :homepage, only: [:index]
  get "homepage/alluser"
  resources :credit_card_page, param: :public_uid
  post "credit_card_page/confirmation"
  resources :comment_page
  resources :payment_page, only: [:index]
  post "payment_page/apipost"
  get "payment_page/success"
  
  root to: "homepage#index"
end
