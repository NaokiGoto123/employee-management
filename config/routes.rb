Rails.application.routes.draw do
  resources :attendances
  devise_for :users
  resources :teams
  match '/users/:id/attendances', to: 'users#attendances', via: [:get], as: 'users_attendances'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
end
