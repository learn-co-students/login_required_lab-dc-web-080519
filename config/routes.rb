Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions
  resources :secrets, only: :show
  get '/welcome', to: 'sessions#welcome'
  get '/secrets', to: 'secrets#show'
  get '/destroy', to: 'sessions#destroy'
  root 'sessions#new'
end
