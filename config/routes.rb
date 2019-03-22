Rails.application.routes.draw do

  # get 'reservations/new'
  # get 'reservations/index'
  # get 'reservations/show'

  resources :restaurants do
  resources :reservations, only: [ :new, :create]
  end

  resources :reservations, only: [:show, :update]

devise_for :users, controllers: {registrations: 'registrations'}

  resources :users  do
    # resources :restaurants, only: [:index, :show]
    member do
      get :restaurants, to: "restaurants"
    end
  end


  root "restaurants#index"
  #FOR THE FUTURE ADD ROOOT HOMEPAGE (FIGMA)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
