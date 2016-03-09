class ContactMailer < ActionMailer::Base
  default to: 'your@email_address.com'
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    User.with_role(:admin).each do |admin|
      mail(to: admin.email, subject: 'Contact Form Message')
    end
  end
end
