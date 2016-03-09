class AdminMailer < ActionMailer::Base
  layout 'mail_layout'
  def new_sign_up(user)
    User.with_role(:admin).each do |admin|
      mail(to: admin.email, from: ENV['FROM_EMAIL'], subject: "New user signup")
    end
  end
end
