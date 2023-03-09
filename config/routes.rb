# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  resources :taxes, :customers, :invoices
  devise_for :users

  resources :invoice_items, only: [], param: :index do
    member do
      delete '(:id)' => 'invoice_items#destroy', as: ''
      post '/' => 'invoice_items#create'
      post 'add' => 'invoice_items#add'
    end
  end
end
