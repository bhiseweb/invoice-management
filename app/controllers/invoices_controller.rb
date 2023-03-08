# frozen_string_literal: true

# InvoicesController
class InvoicesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_invoice, only: %i[show edit update destroy]

  def index
    @invoices = Invoice.includes(:customer).paginate(page: params[:page], per_page: 5)
  end

  def show; end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new(invoice_params)

    respond_to do |format|
      if @invoice.save
        format.html { redirect_to invoice_url(@invoice), notice: 'Invoice was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_invoice
    @invoice = Invoice.find(params[:id])
  end

  def invoice_params
    params.require(:invoice)
          .permit(:customer_id, :invoice_date,
                  invoice_items_attributes: %i[id description units unit_cost tax_id item_total _destroy])
  end
end
