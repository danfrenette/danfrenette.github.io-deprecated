class ContactEmailMailer < ApplicationMailer
  def recieve_from_user(contact_email)
    @contact_email = contact_email
    @to = "dan.r.frenette@gmail.com"
    mail(to: @to, from: contact_email.email, subject: contact_email.subject)
  end
end
