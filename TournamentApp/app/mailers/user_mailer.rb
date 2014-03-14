class UserMailer < ActionMailer::Base
  default from: "bolie160@gmail.com"
   def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site') do |format|
      format.html { render layout: 'my_layout' }
      format.text
  end
end
end