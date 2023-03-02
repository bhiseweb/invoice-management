# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'InvoicesRouting', type: :routing do
  describe 'routing to invoices resources' do
    it 'routes GET /invoices to invoices#index' do
      expect(get: '/invoices').to route_to(controller: 'invoices', action: 'index')
    end

    it 'routes GET /invoices/new to invoices#new' do
      expect(get: '/invoices/new').to route_to(controller: 'invoices', action: 'new')
    end

    it 'routes POST /invoices to invoices#create' do
      expect(post: '/invoices').to route_to(controller: 'invoices', action: 'create')
    end

    it 'routes GET /invoices/:id to invoices#show' do
      expect(get: '/invoices/1').to route_to(controller: 'invoices', action: 'show', id: '1')
    end

    it 'routes GET /invoices/:id/edit to invoices#edit' do
      expect(get: '/invoices/1/edit').to route_to(controller: 'invoices', action: 'edit', id: '1')
    end

    it 'routes PATCH /invoices/:id to invoices#update' do
      expect(patch: '/invoices/1').to route_to(controller: 'invoices', action: 'update', id: '1')
    end

    it 'routes PUT /invoices/:id to invoices#update' do
      expect(put: '/invoices/1').to route_to(controller: 'invoices', action: 'update', id: '1')
    end

    it 'routes DELETE /invoices/:id to invoices#destroy' do
      expect(delete: '/invoices/1').to route_to(controller: 'invoices', action: 'destroy', id: '1')
    end
  end
end
