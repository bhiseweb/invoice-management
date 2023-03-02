# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  resources :taxes, :customers, :invoices
  devise_for :users
end
