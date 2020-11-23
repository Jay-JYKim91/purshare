Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :bags, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  resources :users, only: [:show, :edit, :update]
  # get 'bookings/new'
  # get 'bookings/create'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/update'
  # get 'bags/index'
  # get 'bags/:id'
  # get 'bags/new'
  # get 'bags/create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
