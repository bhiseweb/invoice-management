# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Invoice, type: :model do
  describe 'Associations' do
    it { should belong_to(:customer) }
    it { should have_many(:invoice_items) }
    it { should accept_nested_attributes_for(:invoice_items).allow_destroy(true) }
  end
end
