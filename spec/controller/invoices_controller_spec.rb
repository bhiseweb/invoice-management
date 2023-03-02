# frozen_string_literal: true

require 'rails_helper'

RSpec.describe InvoicesController, type: :controller do
  let(:invoice) { FactoryBot.create(:invoice) }
  let(:customer) { FactoryBot.create(:customer) }

  describe 'GET index' do
    it 'shows all data' do
      get :index
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET show' do
    it 'shows single data' do
      invoice1 = Invoice.create(customer_id: customer.id)
      get :show, params: { id: invoice1.id }
      expect(response).to have_http_status(302)
    end
  end
end
