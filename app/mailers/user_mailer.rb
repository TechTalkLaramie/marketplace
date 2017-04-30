class UserMailer < ApplicationMailer
end

class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def welcome_email(current_user)
    @user = current_user
    @url  = 'http://ttlmarketplace.herokuapp.com/'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
