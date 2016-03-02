class AdminMailer < ActionMailer::Base
  layout 'mail_layout'
  def new_sign_up(user)
    admin_user = User.with_role(:admin).first
    User.with_role(:admin).each do |admin|
      mail(to: admin.email, from: admin_user, subject: "New user signup")
    end
  end
end
