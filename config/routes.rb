Rails.application.routes.draw do
  resources :customers
  devise_for :users
end
