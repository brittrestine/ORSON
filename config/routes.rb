Rails.application.routes.draw do
  get 'home/index'

  resources :movies, only: [:index, :show]

    resources :reviews do
      resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'users/index'

  # get 'users/show'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # resources :reviews do
  #   resources :comments
  # end

  resources :users

  root 'home#index'
end
