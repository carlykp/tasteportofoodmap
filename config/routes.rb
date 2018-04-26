Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get 'billboard', to: 'pages#billboard', as: :billboard
  get '/restaurants' => "restaurants#index", as: :user_root

  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # get 'restaurants/:id/booking', to: 'restaurants#booking', as: :booking

  resources :restaurants, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
end
