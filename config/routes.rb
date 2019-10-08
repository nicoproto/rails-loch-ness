Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :monsters do
    resources :reviews, only: %i[new create show index]
    resources :reservations, only: %i[new create]
  end
  resources :reservations, only: %i[index show edit update]
  resources :conversations, only: %i[new create show] do
    resources :messages, only: %i[new create]
  end
end
