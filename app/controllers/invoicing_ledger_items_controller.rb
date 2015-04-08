class InvoicingLedgerItemsController < ApplicationController
  before_action :set_invoicing_ledger_item, only: [:show, :edit, :update, :destroy]
  
  respond_to :html

  def index
    @invoicing_ledger_items = InvoicingLedgerItem.all
    respond_with(@invoicing_ledger_items)
  end

  def show
    respond_with(@invoicing_ledger_item)
  end

  def new
    # create a client invoice and add line items to it
    @invoicing_ledger_item = InvoicingLedgerItem.new
    @invoicing_ledger_item.line_items.build

    # TODO: Have a mailer which sends invoice to client; install prawn and prawn-table gems
    # InvoiceMailer.send_invoice(invoice).deliver
    
    respond_with(@invoicing_ledger_item)
  end

  def edit
  end

  def create
    @invoicing_ledger_item = InvoicingLedgerItem.create(invoicing_ledger_item_params)
    @invoicing_ledger_item.line_items.build(invoicing_line_item_params)
    if @invoicing_ledger_item.save
      flash[:success] = 'Invoice Ledger Item was successfully created.'
      respond_with @invoicing_ledger_item
    else
      render action: 'new'
    end
  end

  def update
    @invoicing_ledger_item.update(invoicing_ledger_item_params)

    respond_with @invoicing_ledger_item
  end

  def destroy
    @invoicing_ledger_item.destroy
    #respond_with @invoice
    redirect_to :back
  end

  private
    def set_invoicing_ledger_item
      @invoice = Invoice.find(params[:id])
    end

    def invoicing_ledger_item_params
      params.require(:invoice).permit(:sender, :recipient, :currency)
    end
  
    def invoicing_line_item_params
      params.require(:line_items).permit(:description, :net_amount, :tax_amount)
    end
end
