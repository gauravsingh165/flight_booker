Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'flights#index'
  resources :flights, only: [:index]
  # get 'booking/new', to: 'bookings#new', as: 'booking_new'
  resources :bookings
end
