class UserMailer < ApplicationMailer
	default from: "umarortask@gmail.com" #"from@example.com"

	def account_activation(user)
		@user = user
		mail(to: @user.email_id, subject: "Account Verification mail from ByteForza") if @user.email_id.present?
	end
end
