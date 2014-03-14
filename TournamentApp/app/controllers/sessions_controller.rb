class SessionsController < ApplicationController

  def destroy
    reset_session
    redirect_to root_url, notice: "Goodbye."
  end

  def create
    email_address = params[:email]

    user = User.find_by(email: email_address)
    if user
      # UserMailer.deliver_reg_confirmation(@user)
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to user_url(session[:user_id]), notice: "Welcome Back, #{user.name}"
      else
        redirect_to root_url, notice: "Bad Password"
      end
    else
       redirect_to root_url, notice: "Unknown Email Address"
    end
  end

end

