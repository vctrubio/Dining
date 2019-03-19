Rails.application.routes.draw do

  # get 'reservations/new'
  # get 'reservations/index'
  # get 'reservations/show'

resources :restaurants, only: [ :index, :show, :new, :create ] do
  resources :reservations, only: [ :new, :create, :index, :show ]
end

devise_for :users
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
