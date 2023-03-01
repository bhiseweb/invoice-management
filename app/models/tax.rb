class Tax < ApplicationRecord
  validates :tax_name, :percentage, presence: true
end
