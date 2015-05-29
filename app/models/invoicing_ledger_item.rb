class InvoicingLedgerItem < ActiveRecord::Base
  acts_as_ledger_item
  #acts_as_paranoid # Uncomment this after I have invoices working
  
  has_many :line_items, class_name: 'InvoicingLineItem', foreign_key: :ledger_item_id
  #accepts_nested_attributes_for :line_items # Need this for nested form to work
  
  validates :currency, presence: true  # currency is required by the database schema
end

class Invoice < InvoicingLedgerItem
  # Used to bill the client.  If a client was undercharged, send another invoice to makeup the difference rather than editing the invoice
  acts_as_invoice
  
  belongs_to :sender, class_name: 'Business', foreign_key: :sender_id
  belongs_to :recipient, class_name: 'Client', foreign_key: :recipient_id
  
  validates :recipient_id, :identifier, :period_start, :period_end, :due_date, presence: true
end

class Bill < Invoice
  #auto_increment Gem has a bug... https://github.com/felipediesel/auto_increment/issues/4
  #https://github.com/felipediesel/auto_increment
  #auto_increment column: :identifier, scope: [:recipient_id], initial: '0001', force: false
  #Might modify and use this example if I can't get auto_increment to work:
#   before_create :set_code
#   def set_code
#     max_code = Operation.maximum(:code)
#     self.code = max_code.to_i + 1
#   end

  after_initialize :defaults
  def defaults
    #self.identifier = ???  # Might use this if I can't get auto_increment to work
    self.description ||= 'Bill for services rendered'
  end
end

class CreditNote < InvoicingLedgerItem
  # If a client was overcharged, send a credit note rather than editing or deleting an invoice
  acts_as_credit_note
end

class PaymentNote < InvoicingLedgerItem
  # Create this when a client pays an invoice
  acts_as_payment
end

# class EndUserInvoice < Invoice
#   # This is for invoices sent to Boomshift customers. Not currently using.
#   #belongs_to :recipient, class_name: 'User'
# end

# class ClientInvoice < Invoice
#   # This is for invoices that Boomshift customers send to their clients.
#   #belongs_to :recipient, class_name: 'Client'
# end