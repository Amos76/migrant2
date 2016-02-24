class AdminMailer < ActionMailer::Base
  layout 'mail_layout'
  def new_sign_up(name, email)
    @name = name
    @email = email
    User.with_role(:admin).each do |admin|
      mail(from: admin.email, subject: "New user signup")
    end
  end
end
