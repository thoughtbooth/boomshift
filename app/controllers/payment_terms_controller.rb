class PaymentTermsController < ApplicationController
  before_action :set_payment_term, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @payment_terms = PaymentTerm.all
    respond_with(@payment_terms)
  end

  def show
    respond_with(@payment_term)
  end

  def new
    @payment_term = PaymentTerm.new
    respond_with(@payment_term)
  end

  def edit
  end

  def create
    @payment_term = PaymentTerm.new(payment_term_params)
    @payment_term.save
    respond_with(@payment_term)
  end

  def update
    @payment_term.update(payment_term_params)
    respond_with(@payment_term)
  end

  def destroy
    @payment_term.destroy
    respond_with(@payment_term)
  end

  private
    def set_payment_term
      @payment_term = PaymentTerm.find(params[:id])
    end

    def payment_term_params
      params.require(:payment_term).permit(:days_to_pay, :business_id)
    end
end
