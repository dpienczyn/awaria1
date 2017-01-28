ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "awaria1.herokuapp.com",
  :user_name            => "awaria.kontakt@gmail.com",
  :password             => "admin1234567",
  :authentication       => "plain",
  :enable_starttls_auto => true
}