# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'TaxesRouting', type: :routing do
  describe 'routing to taxes resources' do
    it 'routes GET /taxes to taxes#index' do
      expect(get: '/taxes').to route_to(controller: 'taxes', action: 'index')
    end

    it 'routes GET /taxes/new to taxes#new' do
      expect(get: '/taxes/new').to route_to(controller: 'taxes', action: 'new')
    end

    it 'routes POST /taxes to taxes#create' do
      expect(post: '/taxes').to route_to(controller: 'taxes', action: 'create')
    end

    it 'routes GET /taxes/:id to taxes#show' do
      expect(get: '/taxes/1').to route_to(controller: 'taxes', action: 'show', id: '1')
    end

    it 'routes GET /taxes/:id/edit to taxes#edit' do
      expect(get: '/taxes/1/edit').to route_to(controller: 'taxes', action: 'edit', id: '1')
    end

    it 'routes PATCH /taxes/:id to taxes#update' do
      expect(patch: '/taxes/1').to route_to(controller: 'taxes', action: 'update', id: '1')
    end

    it 'routes PUT /taxes/:id to taxes#update' do
      expect(put: '/taxes/1').to route_to(controller: 'taxes', action: 'update', id: '1')
    end

    it 'routes DELETE /taxes/:id to taxes#destroy' do
      expect(delete: '/taxes/1').to route_to(controller: 'taxes', action: 'destroy', id: '1')
    end
  end
end
