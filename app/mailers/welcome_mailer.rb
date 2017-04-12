class WelcomeMailer < ApplicationMailer

	def welcome_send(user)
		@user = user
		attachments.inline['logo.png'] = File.read('app/assets/images/logo.png')
		mail to: user.email, subject: "Witamy na naszej stronie", from: 'awaria.kontakt@gmail.com'
	end
end
