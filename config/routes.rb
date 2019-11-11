Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :monsters do
    resources :reservations, only: %i[new create]
    resources :messages, only: %i[new create]
  end

  resources :reservations, only: %i[index show edit update destroy]
  resources :conversations, only: %i[index new create show]

  resources :reservations, only: %i[index show edit update destroy] do
    resources :reviews, only: %i[new create show index]
  end
  get '/dashboard', to: 'dashboards#show'
  get '/filter', to: 'monsters#filter'

  patch '/reservations/:id/accept', to: 'reservations#accept_reservation', as: :accept
  patch '/reservations/:id/reject', to: 'reservations#reject_reservation', as: :reject
end
