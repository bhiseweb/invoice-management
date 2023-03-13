# app/controllers/invoice_items_controller.rb
class InvoiceItemsController < ApplicationController
  before_action :set_invoice

  def new; end

  def destroy; end

  private

  def invoice_params
    params.require(:invoice)
          .permit(:customer_id, :invoice_date,
                  :total_gross, :total_net, :total_taxes,
                  invoice_items_attributes: %i[id description units item_index unit_cost tax_id _destroy])
  end

  def set_invoice
    @invoice = Invoice.new(invoice_items: [InvoiceItem.new])
  end
end
