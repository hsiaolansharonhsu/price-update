Rails.application.routes.draw do
  # root "hotels#index"
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }
  # resources :hotels
  # resources :users
end
