Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :horses, only: %i[index show] do
    resources :bookings, only: :create
  end

  namespace :owner do
    resources :horses
    resources :bookings, except: %i[index show new create edit update destroy] do
      member do
        patch :accept
        patch :decline
      end
    end
  end

  resource :profile, only: :show
end
