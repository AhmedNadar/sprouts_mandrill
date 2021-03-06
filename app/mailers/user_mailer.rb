class UserMailer < ApplicationMailer

  default from: 'posts@utsoniss.com'
  layout 'mailer'

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:4000/users/sign_in'
    mail(to: @user.email,
         subject: 'Welcome to My Awesome Site'
        )
  end
end
