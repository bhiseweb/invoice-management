# app/controllers/invoice_items_controller.rb
class InvoiceItemsController < ApplicationController
  before_action :set_invoice, except: [:add]

  def new; end

  def create; end

  def destroy
  end

  def add
    @invoice = Invoice.new(invoice_params)
    @invoice.invoice_items.each(&:calculate_total)
    @invoice.calculate_sum
  end

  private

  def invoice_params
    params.require(:invoice)
          .permit(:customer_id, :invoice_date,
                  invoice_items_attributes: %i[id description units unit_cost tax_id item_total _destroy])
  end

  def set_invoice
    @invoice = Invoice.new(invoice_items: [InvoiceItem.new])
  end
end
