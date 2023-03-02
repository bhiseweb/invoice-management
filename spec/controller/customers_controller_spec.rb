# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CustomersController, type: :controller do
  let(:customer) { create(:customer) }

  describe 'GET index' do
    it 'shows all data' do
      get :index
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET show' do
    it 'shows single data' do
      customer1 = Customer.create(name: 'Robert Gates', fiscal_id: '1')
      get :show,  params: { id: customer1.id }
      expect(response).to have_http_status(302)
    end
  end

  describe 'Edit ' do
    it 'It edites customer' do
      customer2 = Customer.create(name: 'Ricardo Downey', fiscal_id: '2')
      get :edit, params: { id: customer2.id }
      expect(response).to have_http_status(302)
    end
  end

  describe 'update ' do
    it 'It updates customer' do
      customer3 = Customer.create(name: 'Christopher Evans', fiscal_id: '3')
      put :update, params: { id: customer3.id, post: { name: 'David Russo' } }
      expect(response).to have_http_status(302)
    end
  end

  describe 'destroy ' do
    it 'It destroys customer' do
      customer4 = Customer.create(name: 'Ricardo Downey', fiscal_id: '2')
      delete :destroy, params: { id: customer4.id }
      expect(response).to have_http_status(302)
    end
  end
end
