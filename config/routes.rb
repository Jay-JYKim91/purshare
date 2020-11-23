Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'bags/index'
  get 'bags/show'
  get 'bags/new'
  get 'bags/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
