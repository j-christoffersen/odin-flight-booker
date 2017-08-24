Rails.application.routes.draw do

  get 'bookings/new'

  root 'flights#index'

  resources :flights,  only: [:index]
  resources :bookings, only: [:index, :create, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
