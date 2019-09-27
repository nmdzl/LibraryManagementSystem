# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address => "smtp.mandrillapp.com",
    :port => 587,
    :domain => "mandrillapp.com",
    :authentication => :login,
    :student_name => "bzhang37@ncsu.edu",
    :password => "12345678qwertyui",
    :enable_starttls_auto => true
}