Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :homepage, only: [:index]
  resources :credit_card_page
  post "credit_card_page/confirmation"
  resources :comment_page
  #devise_for :users, controllers: {
    #sessions: 'users/sessions'
  #}
  
  root to: "homepage#index"
end
