# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'CustomersRouting', type: :routing do
  describe 'routing to customers resources' do
    it 'routes GET /customers to customers#index' do
      expect(get: '/customers').to route_to(controller: 'customers', action: 'index')
    end

    it 'routes GET /customers/new to customers#new' do
      expect(get: '/customers/new').to route_to(controller: 'customers', action: 'new')
    end

    it 'routes POST /customers to customers#create' do
      expect(post: '/customers').to route_to(controller: 'customers', action: 'create')
    end

    it 'routes GET /customers/:id to customers#show' do
      expect(get: '/customers/1').to route_to(controller: 'customers', action: 'show', id: '1')
    end

    it 'routes GET /customers/:id/edit to customers#edit' do
      expect(get: '/customers/1/edit').to route_to(controller: 'customers', action: 'edit', id: '1')
    end

    it 'routes PATCH /customers/:id to customers#update' do
      expect(patch: '/customers/1').to route_to(controller: 'customers', action: 'update', id: '1')
    end

    it 'routes PUT /customers/:id to customers#update' do
      expect(put: '/customers/1').to route_to(controller: 'customers', action: 'update', id: '1')
    end

    it 'routes DELETE /customers/:id to customers#destroy' do
      expect(delete: '/customers/1').to route_to(controller: 'customers', action: 'destroy', id: '1')
    end
  end
end
