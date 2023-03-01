Rails.application.routes.draw do
  resources :taxes, :customers
  devise_for :users
end
