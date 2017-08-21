Rails.application.routes.draw do

  devise_for :users
  root to: 'cocktails#index'

  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: [:create]
  end

  resources :doses, only: [:destroy]

  resources :ingredients, only: [:show]

  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
