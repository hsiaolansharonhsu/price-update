Rails.application.routes.draw do
  # resources :hotels, only: [:index]
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }
  root "users#index"

  # namespace :admin do
  #   resources :hotels
  resources :users, only: [:index, :show, :destroy]
  # end
end
