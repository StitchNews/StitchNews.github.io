class UserMailer < ApplicationMailer
  default from: "team@stitchnews.io"
  layout 'mailer'

  def download_request(email)
    mail to: email, subject: "Welcome to Stitch News"
  end
end
