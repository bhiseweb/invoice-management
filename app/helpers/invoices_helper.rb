# frozen_string_literal: true

# InvoicesHelper
module InvoicesHelper
  def select_options_for_taxes
    options = ''
    taxes = Tax.select(:id, :tax_name, :percentage).as_json
    taxes.each do |opt|
      options += option_tag(opt['id'], opt['tax_name'], opt['percentage'])
    end
    options.html_safe
  end

  def option_tag(value, label, data)
    "<option data-percentage=#{data} value=#{value}>#{label}</option>"
  end
end
