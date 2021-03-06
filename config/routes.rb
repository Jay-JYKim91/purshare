Rails.application.routes.draw do
  devise_for :users
  root to: 'bags#index'

  resources :bags do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy]
  resources :users, only: [:show, :edit, :update]
  get '/dashboard/:id', to: "pages#show", as: 'dashboard'

  resources :bookings do
    post 'approvals', to: 'bookings#approve'
  end


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
