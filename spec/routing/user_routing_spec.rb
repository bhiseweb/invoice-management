# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'DeviseRouting', type: :routing do
  describe 'routing to devise resources' do
    it 'routes GET /users/sign_in to devise/sessions#new' do
      expect(get: '/users/sign_in').to route_to(controller: 'devise/sessions', action: 'new')
    end

    it 'routes POST /users/sign_in to devise/sessions#create' do
      expect(post: '/users/sign_in').to route_to(controller: 'devise/sessions', action: 'create')
    end

    it 'routes DELETE /users/sign_out to devise/sessions#destroy' do
      expect(delete: '/users/sign_out').to route_to(controller: 'devise/sessions', action: 'destroy')
    end

    it 'routes GET /users/password/new to devise/passwords#new' do
      expect(get: '/users/password/new').to route_to(controller: 'devise/passwords', action: 'new')
    end

    it 'routes POST /users/password to devise/passwords#create' do
      expect(post: '/users/password').to route_to(controller: 'devise/passwords', action: 'create')
    end

    it 'routes GET /users/password/edit to devise/passwords#edit' do
      expect(get: '/users/password/edit').to route_to(controller: 'devise/passwords', action: 'edit')
    end

    it 'routes PATCH /users/password to devise/passwords#update' do
      expect(patch: '/users/password').to route_to(controller: 'devise/passwords', action: 'update')
    end

    it 'routes PUT /users/password to devise/passwords#update' do
      expect(put: '/users/password').to route_to(controller: 'devise/passwords', action: 'update')
    end

    it 'routes GET /users/cancel to devise/registrations#cancel' do
      expect(get: '/users/cancel').to route_to(controller: 'devise/registrations', action: 'cancel')
    end

    it 'routes GET /users/sign_up to devise/registrations#new' do
      expect(get: '/users/sign_up').to route_to(controller: 'devise/registrations', action: 'new')
    end

    it 'routes POST /users to devise/registrations#create' do
      expect(post: '/users').to route_to(controller: 'devise/registrations', action: 'create')
    end

    it 'routes GET /users/edit to devise/registrations#edit' do
      expect(get: '/users/edit').to route_to(controller: 'devise/registrations', action: 'edit')
    end

    it 'routes PATCH /users to devise/registrations#update' do
      expect(patch: '/users').to route_to(controller: 'devise/registrations', action: 'update')
    end

    it 'routes PUT /users to devise/registrations#update' do
      expect(put: '/users').to route_to(controller: 'devise/registrations', action: 'update')
    end

    it 'routes DELETE /users to devise/registrations#destroy' do
      expect(delete: '/users').to route_to(controller: 'devise/registrations', action: 'destroy')
    end
  end
end
