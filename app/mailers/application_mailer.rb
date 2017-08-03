class ApplicationMailer < ActionMailer::Base
  default from: "superadmin@example.com"
  layout 'mailer'
  def send_welcome_email(user)      # send welcome mail to new registered users
  	@user = user
  	mail(:to => @user.email, :subject => 'Welcome')
  end	
end
