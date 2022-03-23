Rails.application.routes.draw do
  get 'users/show'
  root 'static_pages#index'
  devise_for :users
  get '/users/:id', to: 'users#show', as: 'user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
