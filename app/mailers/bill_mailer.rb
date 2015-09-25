class BillMailer < ActionMailer::Base
  default from: "info@thoughtbooth.com"
  
  def bill_email(client)
    @client = client
    mail(to: @client.email, subject: 'Your Bill')
  end
end
