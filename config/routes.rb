Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about'
  get 'blog', to: 'pages#blog'

  resources :yoga_class do
    resources :bookings, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :bookings, only:[:index, :show, :destroy] do
    member do
      get 'confirmation'
    end
  end

  get 'profile', action: :show, controller: 'users'

end
