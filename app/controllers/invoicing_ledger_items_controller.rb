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
  
  def add_invoice
    @invoicing_ledger_item = EndUserInvoice.new(params[:id])
    @invoicing_ledger_item.line_items.build(params[:id])
    @invoicing_ledger_item.save
    
    respond_with(@invoicing_ledger_item)
  end

  def new
    # create a client invoice and add line items to it
    @invoicing_ledger_item = InvoicingLedgerItem.new
    #@invoicing_ledger_item.line_items.build
    #@invoicing_line_item = InvoicingLineItem.new

    # TODO: Have a mailer which sends invoice to client; install prawn and prawn-table gems
    # InvoiceMailer.send_invoice(invoice).deliver
    
    respond_with(@invoicing_ledger_item)
  end

  def edit
  end

  def create
    #WHAT I'M DOING: I'm not going to use nested forms anymore.  Instead I'm going with what I know.  I am creating views for the invoice, and then showing the child line items on that view, much like I did for clients and services.
    #I'll need controllers for both invoices and line items for this to work.
    #TODO: The params being passed in by the form are what the user enters, and then I'll set the remainder params with the appropriate values, such as sender: current_user.business.name
    @invoicing_ledger_item = InvoicingLedgerItem.create(invoicing_ledger_item_params, sender: current_user.business.name, type: asdf, issue_date: asdf, description: asdf, period_start: asdf, period_end: asdf, due_date: asdf)
    #@invoicing_ledger_item.line_items.build(invoicing_line_item_params)
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
      @invoice = InvoicingLedgerItem.find(params[:id])
    end

    def invoicing_ledger_item_params
      params.require(:invoicing_ledger_item).permit(:sender, :recipient, :type, :issue_date, :total_amount, :status, :description, :period_start, :period_end, :due_date)
    end
  
    def invoicing_line_item_params
      params.require(:invoicing_line_item).permit(:type, :net_amount, :description, :net_amount, :quantity, :creator_id)
    end
end
