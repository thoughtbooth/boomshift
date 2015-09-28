class BillMailer < ActionMailer::Base
  default from: "info@boomshift.com"
  
  def bill_email(client, bill, invoicing_line_items)
    @client = client
    @bill = bill
    @invoicing_line_items = invoicing_line_items
    mail(to: @client.email, subject: 'Your Bill')
  end
end
