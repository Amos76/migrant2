class AdminMailer < ActionMailer::Base
  def new_sign_up(name, email)
    @name = name
    @email = email
    @body = "New user signed up. Head to #{ENV['ROOT_URL']}"
    User.with_role(:admin).each do |admin|
      mail(from: admin.email, subject: "New user signup")
    end
  end
end
