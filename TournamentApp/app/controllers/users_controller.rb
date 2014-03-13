class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    if session[:user_id] != @user.id
      redirect_to root_url, notice: "No way!"
    end
  

  def create
    user = User.new
    user.name = params[:name]
    user.email = params[:email]
    user.password = params[:password]
    user.password_confirmation = params[:password]
    if user.save
    	session[:user_id] = user.id
    	redirect_to root_url, notice: "Thanks for signing up!" and return
    else
      redirect_to new_user_path, notice: "Sorry, another user has this email." and return
	end 
  end


def regs
  @registrations = Registration.find()
end 
 
end
end