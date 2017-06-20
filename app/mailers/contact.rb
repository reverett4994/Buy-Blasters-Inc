class Contact < ApplicationMailer
  default from: "from@example.com"
  # layout 'mailer'


  def contact_email(email,message)
    @email = email
    @message= message
    @url  = 'http://example.com/login'
    mail(to: ENV.fetch('GMAIL_USERNAME'), subject: 'Message Recvied from Bug Blaster Site!')
  end



end
