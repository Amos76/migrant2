class UserMailer < ActionMailer::Base
  default from: ENV['FROM_EMAIL']
  layout 'mail_layout'

  def sign_up(user)
    @name = name
    @email = email
    @body = "Thanks for signing up to the Migrant Entrepreneurs Network."
    mail(to: email, subject: 'Thanks for signing up')
  end

  def approved(user)
    mail(to: user.email, subject: 'Your application to the Migrant Entrepreneurs Network has been approved')
  end
end
