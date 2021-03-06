Rails.application.routes.draw do
  root 'welcome#index'

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create]
  get '/logout', controller: 'sessions', action: 'destroy'

  resources :lists do
    resources :gifts
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
