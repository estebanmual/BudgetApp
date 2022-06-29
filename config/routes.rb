Rails.application.routes.draw do
  root 'categories#splash'
  devise_for :users
  resources :categories do
    resources :entities
  end
end
