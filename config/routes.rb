Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :monsters do
    resources :reservations, only: %i[new create]
  end
  resources :reservations, only: %i[index show edit update destroy] do
    resources :reviews, only: %i[new create show index]
  end
  resources :conversations, only: %i[new create show] do
    resources :messages, only: %i[new create]
  end
  get '/dashboard', to: 'dashboards#show'
  get '/price_asc', to: 'monsters#price_filter_asc'
  get '/price_dsc', to: 'monsters#price_filter_dsc'
  get '/reviews_asc', to: 'monsters#review_filter_asc'
  get '/reviews_dsc', to: 'monsters#review_filter_dsc'

  patch '/reservations/:id/accept', to: 'reservations#accept_reservation', as: :accept
  patch '/reservations/:id/reject', to: 'reservations#reject_reservation', as: :reject
end
