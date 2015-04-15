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
    
    # Convert the date formats from Moment.js to Strftime for submission to server
    invoice_params_strptime = invoice_params
    invoice_params_strptime[:period_start] = Date.strptime invoice_params_strptime[:period_start], '%m/%d/%Y'
    invoice_params_strptime[:period_end] = Date.strptime invoice_params_strptime[:period_end], '%m/%d/%Y'
    invoice_params_strptime[:due_date] = Date.strptime invoice_params_strptime[:due_date], '%m/%d/%Y'
    @invoice = Invoice.create(invoice_params_strptime)
    @invoice.sender_id = current_user.business.id
    #@invoice.line_items.build(invoicing_line_item_params)
    if @invoice.save
      flash[:success] = 'The invoice was successfully created.'
      respond_with @invoice
    else
      render action: 'new'
    end
  end

  def update
    # Convert the date formats from Moment.js to Strftime for submission to server
    invoice_params_strptime = invoice_params
    invoice_params_strptime[:period_start] = Date.strptime invoice_params_strptime[:period_start], '%m/%d/%Y'
    invoice_params_strptime[:period_end] = Date.strptime invoice_params_strptime[:period_end], '%m/%d/%Y'
    invoice_params_strptime[:due_date] = Date.strptime invoice_params_strptime[:due_date], '%m/%d/%Y'
    @invoice.update(invoice_params_strptime)

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
      params.require(:invoice).permit(:sender_id, :recipient_id, :type, :identifier, :issue_date, :currency, :total_amount, :status, :description, :period_start, :period_end, :due_date)
    end
  
end
