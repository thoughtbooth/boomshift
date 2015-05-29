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
  
#   def add_bill
#     @bill = EndUserBill.new(params[:id])
#     @bill.line_items.build(params[:id])
#     @bill.save
    
#     respond_with(@bill)
#   end

  def new
    # create a client bill and add line items to it
    @bill = Bill.new
    #@bill.line_items.build
    #@invoicing_line_item = InvoicingLineItem.new

    # TODO: Have a mailer which sends bill to client; install prawn and prawn-table gems
    # BillMailer.send_bill(bill).deliver
    # When it gets sent, set issue_date: Time.zone.now
    
    respond_with(@bill)
  end

  def edit
  end

  def create
    #WHAT I'M DOING: I'm not going to use nested forms anymore.  Instead I'm going with what I know.  I am creating views for the bill, and then showing the child line items on that view, much like I did for clients and services.
    #I'll need controllers for both bills and line items for this to work.
    
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
    end

    def bill_params
      params.require(:bill).permit(:sender_id, :recipient_id, :type, :identifier, :issue_date, :currency, :total_amount, :status, :description, :period_start, :period_end, :due_date)
    end
  
end
