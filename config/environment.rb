# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

@password = ENV["secret"]

ActionMailer::Base.smtp_settings = {
  :user_name => 'jabattack1',
  :password => @password,
  :domain => 'ublank.io',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}