# frozen_string_literal: true

require 'rails_helper'

RSpec.describe InvoiceItem, type: :model do
  describe 'Associations' do
    it { should belong_to(:tax) }
    it { should belong_to(:invoice) }
  end
end
