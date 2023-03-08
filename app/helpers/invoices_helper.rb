# frozen_string_literal: true

# InvoicesHelper
module InvoicesHelper
  def select_options_for(hash)
    options = ''
    hash.each do |key, value|
      options += option_tag(key, value)
    end
    options.html_safe
  end

  def option_tag(label, value)
    "<option value=#{value}>#{label}</option>"
  end
end
