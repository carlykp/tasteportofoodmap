Rails.application.routes.draw do

  root to: 'pages#home'
  get 'billboard', to: 'pages#billboard', as: :billboard

  get 'restaurants', to: 'restaurants#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
