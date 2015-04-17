class InvoicingLineItem < ActiveRecord::Base
  acts_as_line_item
  #acts_as_paranoid # Uncomment this after I have invoices working

  belongs_to :ledger_item, class_name: 'InvoicingLedgerItem'
  belongs_to :job
end
