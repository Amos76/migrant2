class UserMailer < ActionMailer::Base
  default from: ENV['FROM_EMAIL']
  layout 'mail_layout'

  def sign_up(user)
    @name = name
    @email = email
    @body = "Thanks for signing up to the Migrant Network."
    mail(to: email, subject: 'Thanks for signing up')
  end

  def approved(user)
    mail(to: user.email, subject: 'Your application to the migrant network has been approved')
  end
end
