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
  
  def create_pdf
    require 'invoicing/ledger_item/pdf_generator'
    @bill = InvoicingLedgerItem.where(type: 'Bill').find(params[:format])
    
    pdf_creator = Invoicing::LedgerItem::PdfGenerator.new(@bill)
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
