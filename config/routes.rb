Rails.application.routes.draw do
  get 'users/show'
  root 'static_pages#index'
  devise_for :users, controllers: {
    registrations: "users/registrations",
  }
  get '/users/:id', to: 'users#show', as: 'user'
  resources :destinations, only: [:show, :new, :create, :edit, :update, :destroy]
  get "/contact", to: 'static_pages#contact'
  get "/privacy", to: 'static_pages#privacy'
end
