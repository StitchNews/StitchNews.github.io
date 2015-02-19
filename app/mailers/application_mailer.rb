class ApplicationMailer < ActionMailer::Base
  default from: "team@stitchnews.io"
  layout 'mailer'

  def send_email(email)
    mail to: email, subject: "Account activation"
  end

end
