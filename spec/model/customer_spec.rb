# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'Associations' do
    it { should have_many(:invoices) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should allow_value('abc123').for(:fiscal_id) }
    it { should allow_value('123abc').for(:fiscal_id) }
    it { should allow_value('Abc123').for(:fiscal_id) }
    it { should_not allow_value('abc#123').for(:fiscal_id).with_message('no special characters allowed') }
    it { should_not allow_value('abc 123').for(:fiscal_id).with_message('no special characters allowed') }
    it { should_not allow_value('abc-123').for(:fiscal_id).with_message('no special characters allowed') }
  end
end
