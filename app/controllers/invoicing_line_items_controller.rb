class InvoicingLineItemsController < ApplicationController
  before_action :set_invoicing_line_item, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :set_business
  
  respond_to :html

#   def index #(ledger)
#     @invoicing_line_items = InvoicingLineItem.joins(:business).where("sender_id = ?", current_user.business.id)
#     respond_with(@invoicing_line_items)
#   end

  def show
    respond_with(@invoicing_line_item)
  end

  def new
    @bill = Bill.find(params[:ledger_item_id])
    @invoicing_line_item = @bill.line_items.build(params[:invoicing_line_item])
    respond_with(@invoicing_line_item)
  end

  def edit
  end

  def create
    @invoicing_line_item = InvoicingLineItem.create(invoicing_line_item_params)
    if @invoicing_line_item.save
      flash[:notice] = 'The line item was successfully added to the bill.'
      redirect_to :back
    else
      render action: 'new'
    end
  end

  def update
    @invoicing_line_item.update(invoicing_line_item_params)
    respond_with @invoicing_line_item
  end

  def destroy
    @invoicing_line_item.destroy
    #respond_with @invoicing_line_item
    redirect_to :back
  end

  private
    def set_invoicing_line_item
      @invoicing_line_item = InvoicingLineItem.find(params[:id])
    end
  
    def correct_user
      @invoicing_line_item = InvoicingLineItem.find_by(id: params[:id], ledger_item_id: InvoicingLedgerItem.where("sender_id = ?", current_user.business.id)) #current_user.business.invoicing_ledger_items.line_items.find_by(id: params[:id])
      if @invoicing_line_item.nil?
        flash[:notice] = "You are not authorized for that line item."
        redirect_to jobs_path
      end
    end
  
    def invoicing_line_item_params
      params.require(:invoicing_line_item).permit(:ledger_item_id, :type, :net_amount, :description, :net_amount, :quantity, :creator_id)
    end
end