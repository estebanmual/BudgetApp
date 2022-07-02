Rails.application.routes.draw do
  root 'categories#splash'
  devise_for :users
  resources :categories, only: %i[index show new create]
  resources :entities, only: %i[new create]
end
