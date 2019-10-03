Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :monsters do
    resources :reviews, only: %i[new create show index]
  end
  resources :reservations, only: %i[new create show edit update]
  resources :messages, only: %i[new create]
end
