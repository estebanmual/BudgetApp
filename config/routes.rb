Rails.application.routes.draw do
  root 'categories#splash'
  devise_for :users
  resources :categories
  resources :entities, only: %i[new create]
end
