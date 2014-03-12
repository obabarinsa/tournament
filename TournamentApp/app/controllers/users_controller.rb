class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    if session[:user_id] != @user.id
      redirect_to root_url, notice: "No way!"
    end
  end

  def create
    user = User.new
    user.name = params[:name]
    user.email = params[:email]
    user.password = params[:password]
    user.password_confirmation = params[:password]
    if user.save
    	session[:user_id] = user.id
    	redirect_to root_url, notice: "Thanks for signing up!"
    	# user_url(session[:user_id])
    else
    	# render user.errors.inspect
      redirect_to new_user_path, notice: "Sorry, another user has this email."
	end 
  end
# def new
#   @user = User.new
# end

def regs
  @registrations = Registration.find()
end 
 #  def edit
	# 	the_user_id = params["id"]
	# 	@user = User.find_by(:id => the_user_id)
	# end

	# def update
	#     the_user_id = params["id"]
	#     user = User.find_by(:id => the_user_id)
	#     user.name = params["name"]
	#     # user.rules = params["rules"]
	#     user.save
	#     redirect_to users_url
	# end
end
