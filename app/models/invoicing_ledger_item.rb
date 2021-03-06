class InvoicingLedgerItem < ActiveRecord::Base
  acts_as_ledger_item
  #acts_as_paranoid # Uncomment this after I have invoices working
  
  has_many :line_items, class_name: 'InvoicingLineItem', foreign_key: :ledger_item_id
  #accepts_nested_attributes_for :line_items # Need this for nested form to work
  
  validates :sender_id, :recipient_id, :type, :currency, :status, :description, :period_start, :period_end, :due_date, presence: true
end

class Invoice < InvoicingLedgerItem
  acts_as_invoice
  
  belongs_to :sender, class_name: 'Business', foreign_key: :sender_id
  belongs_to :recipient, class_name: 'Client', foreign_key: :recipient_id
  
  validates :type, :status, :sender_id, :recipient_id, :period_start, :period_end, :due_date, presence: true
  
  auto_increment column: :identifier, scope: [:recipient_id], initial: '0001', force: false
end

class Bill < Invoice
  # Used to bill the client.
  
  after_initialize :defaults
  def defaults
    self.description = 'Bill for services rendered'
  end
  
  def sender_details
    # This is used by the gem's HTML render of the bill.
    @business = Business.find(sender_id)
    {is_self: false, name: @business.name, address: @business.addr1 + " " + @business.addr2, city: @business.city, state: @business.state, postal_code: @business.postal_code, country: @business.country}
    #Test hash: {is_self: false, name: "LawnCo", contact_name: "John Doe", address: "123 Anywhere St.", city: "Somewhere", state: "TX", postal_code: "55555", country: "United States", country_code: "USA", tax_number: "12345"}
  end
  
  def recipient_details
    # This is used by the gem's HTML render of the bill.
    @client = Client.find(recipient_id)
    {is_self: false, name: @client.fname + " " + @client.lname, address: @client.addr1 + " " + @business.addr2, city: @client.city, state: @client.state, postal_code: @client.postal_code, country: @client.country}
    #Test hash: {is_self: false, name: "Jane A. Smith", contact_name: "Jane Smith", address: "123 Anywhere St.", city: "Somewhere", state: "TX", postal_code: "55555", country: "United States", country_code: "USA", tax_number: "12345"}
  end
  
  def business_name
    @business = Business.find(sender_id)
    @business.name
  end
  
  def business_contact_name
    @business = Business.find(sender_id)
    @business.contact_name
  end
  
  def business_addr1
    @business.addr1
  end
  
  def business_addr2
    @business.addr2
  end
  
  def business_city
    @business.city
  end
  
  def business_state
    @business.state
  end
  
  def business_postal_code
    @business.postal_code
  end
  
  def business_phone
    @business.phone
  end
  
  def client_addr1
    @client = Client.find(recipient_id)
    @client.addr1
  end
  
  def client_addr2
    @client.addr2
  end
  
  def client_city
    @client.city
  end
  
  def client_state
    @client.state
  end
  
  def client_postal_code
    @client.postal_code
  end
  
  def client_phone
    @client.phone
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