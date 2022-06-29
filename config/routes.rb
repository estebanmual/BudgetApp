Rails.application.routes.draw do
  root 'categories#index'

  resources :categories do
    resources :entities  
  end
  devise_for :users
end
