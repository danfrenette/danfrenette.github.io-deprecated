class ContactEmailsController < ApplicationController
  def create
    contact_email = ContactEmail.new(contact_email_params)

    if verify_recaptcha(model: contact_email) && contact_email.valid?
      contact_email.save
      ContactEmailMailer.recieve_from_user(contact_email).deliver_now
      flash.notice = "Thanks for reaching out!"
    else
      flash.alert = "Looks like something went wrong, if you need to reach me,"\
                    " email me at dan.r.frenette@gmail.com"
    end
  end

  private

  def contact_email_params
    params.require(:contact_email).permit(:email, :subject, :body)
  end
end
