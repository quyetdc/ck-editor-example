class ExampleMailer < ApplicationMailer
	def sample_mailer(user)
		@user = user
		
		# send email
		mail(to: @user.email, subject: 'test mailer')
	end
end
