Rails.application.routes.draw do

  root to: 'pages#home'
  get 'billboard', to: 'pages#billboard', as: :billboard

  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

end
