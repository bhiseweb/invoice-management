Rails.application.routes.draw do
  resources :taxes, :customers, :invoices
  devise_for :users
end
