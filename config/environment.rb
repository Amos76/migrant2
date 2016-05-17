# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => ENV['SMTP_ADDRESS'],
  :port => 2525,
  :authentication => :plain,
  :user_name => ENV['SMTP_USERNAME'],
  :password => ENV['SMTP_PASSWORD'],
  :domain => 'migrantentrepreneurs.net',
  :enable_startstls_auto => true
}
