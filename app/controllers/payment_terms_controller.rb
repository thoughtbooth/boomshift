class PaymentTermsController < ApplicationController
  before_action :set_payment_term, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :set_business

  respond_to :html

#   def index
#     @payment_terms = PaymentTerm.where("business_id = ?", current_user.business.id)
#     respond_with(@payment_terms)
#   end

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
    if @payment_term.save
      flash[:success] = 'Payment terms were successfully created.'
      redirect_to mybusiness_path
    else
      render action: 'new'
    end
  end

  def update
    if @payment_term.update(payment_term_params)
      flash[:success] = 'Payment terms changes were successfully saved.'
      redirect_to mybusiness_path
    else
      render action: 'edit'
    end
  end

  def destroy
    @payment_term.destroy
    flash[:notice] = 'Payment terms were successfully deleted.'
    redirect_to mybusiness_path
  end

  private
    def set_payment_term
      @payment_term = PaymentTerm.find(params[:id])
    end
  
    def correct_user
      unless params[:id].to_i == current_user.business.payment_term.id
        flash[:error] = "You are not authorized for those payment terms."
        redirect_to mybusiness_path
      end
    end
  
    def payment_term_params
      params.require(:payment_term).permit(:days_to_pay, :business_id)
    end
end
