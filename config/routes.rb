Rails.application.routes.draw do
  root 'home#index'

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"


  resources :missions do
    resources :assignments, only: [:create, :destroy]
    member do
    get 'edit2'
    patch 'update2'
  end
  end
  resources :consultants do
    resources :assignments, only: [:create, :destroy]
    member do
    get 'edit_charges'
    patch 'update_charges'
    end
end
end
