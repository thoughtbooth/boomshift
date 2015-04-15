class InvoicingLineItemsController < ApplicationController
  before_action :set_invoicing_line_item, only: [:show, :edit, :update, :destroy]
  
  respond_to :html

  def index #(ledger)
    @invoicing_line_items = InvoicingLineItem.all #.where(ledger_item_id: ledger.id)
    respond_with(@invoicing_line_items)
  end

  def show
    respond_with(@invoicing_line_item)
  end

  def new
    @invoicing_line_item = InvoicingLineItem.new
    respond_with(@invoicing_line_item)
  end

  def edit
  end

  def create
    @invoicing_line_item = InvoicingLineItem.create(invoicing_line_item_params)
    if @invoicing_line_item.save
      flash[:success] = 'The line item was successfully added to the invoice.'
      respond_with @invoicing_line_item.invoice
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
  
    def invoicing_line_item_params
      params.require(:invoicing_line_item).permit(:type, :net_amount, :description, :net_amount, :quantity, :creator_id)
    end
end