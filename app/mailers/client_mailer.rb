class ClientMailer < ActionMailer::Base
    default from: "info@boomshift.com"

  def registration_confirmation(client, user)
    @client = client
    @user = user
    mail(to: "#{client.full_name} <#{client.email}>", subject: "Registration Confirmation")
  end
end