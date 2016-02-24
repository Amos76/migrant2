class UserMailer < ActionMailer::Base
  def sign_up(name, email)
    @name = name
    @email = email
    @body = "Thanks for signing up to the Migrant Network."
    mail(from: email, subject: 'Thanks for signing up')
  end
end
