class PoolsController < ApplicationController

	before_action :require_login, :except => [:home, :login]
    before_action :identify_user

    def identify_user
      user = User.find_by(id: session[:user_id])
      if user
        @username = user.name
      end
    end

    def require_login
      if session[:user_id].blank?
        redirect_to root_url, notice: "Need to Sign Up to view this feature"
      end
    end

    def logout
      reset_session
      redirect_to root_url
    end

    def login
      session[:id] = params[:name]
      redirect_to root_url
    end
    
	def index
	
	 @pools = Pool.all.order("game_id asc")
    # @pools = Tournament.where(:user_id => params[:id])

	end

	def show
    @pools = Tournament.where(:user_id => params[:id])

   end

	def destroy
    the_pool_id = params["id"]
    p = Pool.find_by(:id => the_pool_id)
    p.destroy
    redirect_to pools_url
    end

	def new 
	end

	
	
end