class User < ActiveRecord::Base
	after_create :send_confirmed_email

	def send_confirmed_email
		# Send email for user after being created
		ExampleMailer.sample_mailer(self).deliver
	end
end
