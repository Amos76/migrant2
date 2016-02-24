class UserMailer < ActionMailer::Base
  layout 'mail_layout'
  def sign_up(user)
    @name = name
    @email = email
    @body = "Thanks for signing up to the Migrant Network."
    mail(from: email, subject: 'Thanks for signing up')
  end

  def approved(user)
    mail(from: user.email, subject: 'Your application to the migrant network has been approved')
  end
end
