# frozen_string_literal: true

FactoryBot.define do
  factory :customer do
    name { 'John Doe' }
    fiscal_id { '1' }
  end
end
