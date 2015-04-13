class InvoicesController < ApplicationController
  before_action :set_invoice, only: [:show, :edit, :update, :destroy]
  
  respond_to :html

  def index
    @invoices = InvoicingLedgerItem.where(type: 'Invoice')
    respond_with(@invoices)
  end

  def show
    respond_with(@invoice)
  end
  
#   def add_invoice
#     @invoice = EndUserInvoice.new(params[:id])
#     @invoice.line_items.build(params[:id])
#     @invoice.save
    
#     respond_with(@invoice)
#   end

  def new
    # create a client invoice and add line items to it
    @invoice = Invoice.new
    #@invoice.line_items.build
    #@invoicing_line_item = InvoicingLineItem.new

    # TODO: Have a mailer which sends invoice to client; install prawn and prawn-table gems
    # InvoiceMailer.send_invoice(invoice).deliver
    # When it gets sent, set issue_date: Time.zone.now
    
    respond_with(@invoice)
  end

  def edit
  end

  def create
    #WHAT I'M DOING: I'm not going to use nested forms anymore.  Instead I'm going with what I know.  I am creating views for the invoice, and then showing the child line items on that view, much like I did for clients and services.
    #I'll need controllers for both invoices and line items for this to work.
    #TODO: The params being passed in by the form are what the user enters, and then I'll set the remainder params with the appropriate values, such as sender: current_user.business.name
    @invoice = Invoice.create(invoice_params)
    @invoice.sender_id = current_user.business.name
    #@invoice.line_items.build(invoicing_line_item_params)
    if @invoice.save
      flash[:success] = 'The invoice was successfully created.'
      respond_with @invoice
    else
      render action: 'new'
    end
  end

  def update
    @invoice.update(invoice_params)

    respond_with @invoice
  end

  def destroy
    @invoice.destroy
    #respond_with @invoice
    redirect_to :back
  end

  private
    def set_invoice
      @invoice = InvoicingLedgerItem.where(type: 'Invoice').find(params[:id])
    end

    def invoice_params
      params.require(:invoice).permit(:sender_id, :recipient_id, :type, :issue_date, :currency, :total_amount, :status, :description, :period_start, :period_end, :due_date)
    end
end
