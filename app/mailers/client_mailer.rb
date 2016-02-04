class ClientMailer < ActionMailer::Base
    default from: "info@boomshift.com"

  def registration_confirmation(client, user)
    @client = client
    @user = user
    mail(to: "#{client.full_name} <#{client.email}>", subject: "Client Confirmation for #{user.business.name}")
  end
end