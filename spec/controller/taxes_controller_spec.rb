# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TaxesController, type: :controller do
  let(:tax) { create(:tax) }

  describe 'GET index' do
    it 'shows all data' do
      get :index
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET show' do
    it 'shows single data' do
      tax1 = Tax.create(tax_name: 'Vechile tax')
      get :show, params: { id: tax1.id }
      expect(response).to have_http_status(302)
    end
  end

  describe 'Edit ' do
    it 'It edites tax' do
      tax2 = Tax.create(tax_name: 'GST')
      get :edit, params: { id: tax2.id }
      expect(response).to have_http_status(302)
    end
  end

  describe 'update ' do
    it 'It updates tax' do
      tax3 = Tax.create(tax_name: 'Shipping tax')
      put :update, params: { id: tax3.id, post: { tax_name: 'Transport tax' } }
      expect(response).to have_http_status(302)
    end
  end

  describe 'destroy ' do
    it 'It destroys tax' do
      tax4 = Tax.create(tax_name: 'No tax')
      delete :destroy, params: { id: tax4.id }
      expect(response).to have_http_status(302)
    end
  end
end
