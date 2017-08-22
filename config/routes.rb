Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'pages#home'

  # resources :users do
    # resources :cocktails, only: [:index, :create]
  # end

  resources :cocktails, only: [:show, :new, :destroy, :index, :create] do
    resources :doses, only: [:create]
  end

  resources :doses, only: [:destroy]

  resources :ingredients, only: [:show]

  mount Attachinary::Engine => "/attachinary"

end

