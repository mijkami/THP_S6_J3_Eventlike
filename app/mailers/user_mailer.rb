class UserMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'
 
  def welcome_email(user)
    @user = user 
    @url  = 'http://eventlike/login' 
    @email_service = 'service_client@eventlike.com'
    mail(to: @user.email, subject: 'Confirmation inscription') 
  end
end
