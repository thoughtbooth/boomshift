# Preview all emails at http://localhost:3000/rails/mailers/bill_mailer
# boomshift-106161.nitrousapp.com/rails/mailers/bill_mailer/bill_mail_preview
class BillMailerPreview < ActionMailer::Preview
  def bill_mail_preview
    BillMailer.bill_email(Client.first, InvoicingLedgerItem.first, InvoicingLineItem.where("ledger_item_id = ?", InvoicingLedgerItem.last.id))
  end
end
