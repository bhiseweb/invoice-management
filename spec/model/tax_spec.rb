# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Tax, type: :model do
  describe 'Associations' do
    it { should have_many(:invoice_items) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:tax_name) }
    it { should validate_presence_of(:percentage) }
  end
end
