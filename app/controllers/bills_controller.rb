class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update, :destroy]
  
  respond_to :html

  def index
    @bills = InvoicingLedgerItem.where(type: 'Bill')
    respond_with(@bills)
  end

  def show
    respond_with(@bill)
  end
  
  def view_bill
    bill = InvoicingLedgerItem.where(type: 'Bill').find(params[:format])

    unless bill.sender_id == current_user.id
      raise ActiveRecord::RecordNotFound, "You do not have permission to view this bill."
    end
    
    bill_text = bill.render_html tax_point_column: false, quantity_column: false, tax_amount_column: false, subtotal: false do |i|
      #Show/hide columns by specifying them before: do |i|
        # :tax_point_column
        # :quantity_column
        # :description_column
        # :net_amount_column
        # :tax_amount_column
        # :gross_amount_column
        # :subtotal
      
      #Customize labels:
      #i.date_format "%d %B %Y"
      i.invoice_label "Bill"
      #i.credit_note_label
      i.recipient_label "Customer"
      i.sender_label "Supplier"
      i.tax_number_label "<br />"
      #i.identifier_label
      #i.issue_date_label
      #i.period_start_label
      #i.period_end_label
      #i.due_date_label
      #i.line_tax_point_label
      #i.line_quantity_label
      #i.line_description_label
      i.line_net_amount_label "Price"
      #i.line_tax_amount_label
      #i.line_gross_amount_label
      #i.subtotal_label
      i.total_label "Total Due"
      #i.net_amount_label
      #i.tax_amount_label
      #i.gross_amount_label      
      i.description_tag do |params|
        "<p><strong>Description:</strong> #{params[:description]}</p>\n" +
        "<p>Thank you for your business!</p>\n"
      end
    end
    
    render layout: true, text: bill_text
  end
  
  def create_pdf
    require 'invoicing/ledger_item/pdf_generator'
    bill = InvoicingLedgerItem.where(type: 'Bill').find(params[:format])
    
    pdf_creator = Invoicing::LedgerItem::PdfGenerator.new(bill)
    pdf_file = pdf_creator.render Rails.root.join('/tmp/pdf')
  end
  
#   def send
#     # TODO: Have a mailer which sends bill to client
#     BillMailer.send_bill(@bill).deliver
#     # When it gets sent, set issue_date: Time.zone.now
#   end
  
  def new
    
    @bills = InvoicingLedgerItem.where(type: 'Bill') # Need this so Bill.new will work
    @bill = Bill.new
    #@bill.line_items.build
    #@invoicing_line_item = InvoicingLineItem.new
    
    respond_with(@bill)
  end

  def edit
  end

  def create
    
    # Convert the date formats from Moment.js to Strftime for submission to server
    bill_params_strptime = bill_params
    bill_params_strptime[:period_start] = Date.strptime bill_params_strptime[:period_start], '%m/%d/%Y'
    bill_params_strptime[:period_end] = Date.strptime bill_params_strptime[:period_end], '%m/%d/%Y'
    bill_params_strptime[:due_date] = Date.strptime bill_params_strptime[:due_date], '%m/%d/%Y'
    @bill = Bill.create(bill_params_strptime)
    @bill.sender_id = current_user.business.id
    #@bill.line_items.build(invoicing_line_item_params)
    if @bill.save
      flash[:success] = 'The bill was successfully created.'
      respond_with @bill
    else
      render action: 'new'
    end
  end

  def update
    # Convert the date formats from Moment.js to Strftime for submission to server
    bill_params_strptime = bill_params
    bill_params_strptime[:period_start] = Date.strptime bill_params_strptime[:period_start], '%m/%d/%Y'
    bill_params_strptime[:period_end] = Date.strptime bill_params_strptime[:period_end], '%m/%d/%Y'
    bill_params_strptime[:due_date] = Date.strptime bill_params_strptime[:due_date], '%m/%d/%Y'
    @bill.update(bill_params_strptime)

    respond_with @bill
  end

  def destroy
    @bill.destroy
    #respond_with @bill
    redirect_to :back
  end

  private
    def set_bill
      @bill = InvoicingLedgerItem.where(type: 'Bill').find(params[:id])
      @invoicing_line_items = InvoicingLineItem.where 'ledger_item_id = ?', @bill.id
    end

    def bill_params
      params.require(:bill).permit(:sender_id, :recipient_id, :type, :identifier, :issue_date, :currency, :total_amount, :status, :description, :period_start, :period_end, :due_date)
    end
  
end