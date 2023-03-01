Rails.application.routes.draw do
  root 'home#index'
  resources :taxes, :customers, :invoices
  devise_for :users
end
