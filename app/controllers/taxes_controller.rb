# frozen_string_literal: true

class TaxesController < ApplicationController
  before_action :set_tax, only: %i[show edit update destroy]

  def index
    @taxes = Tax.paginate(page: params[:page], per_page: 5)
  end

  def show; end

  def new
    @tax = Tax.new
  end

  def edit; end

  def create
    @tax = Tax.new(tax_params)

    respond_to do |format|
      if @tax.save
        format.html { redirect_to tax_url(@tax), notice: 'Tax was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @tax.update(tax_params)
        format.html { redirect_to tax_url(@tax), notice: 'Tax was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tax.destroy

    respond_to do |format|
      format.html { redirect_to taxes_url, notice: 'Tax was successfully destroyed.' }
    end
  end

  private

  def set_tax
    @tax = Tax.find(params[:id])
  end

  def tax_params
    params.require(:tax).permit(:tax_name, :percentage)
  end
end
