class PoolsController < ApplicationController

	# before_action :require_login, :except => [:home, :login]
 #    before_action :identify_user

 #    def identify_user
 #      user = User.find_by(id: session[:user_id])
 #      if user
 #        @username = user.name
 #      end
 #    end

 #    def require_login
 #      if session[:user_id].blank?
 #        redirect_to root_url, notice: "Nice Try!"
 #      end
 #    end

 #    def logout
 #      #session[:username] = nil
 #      reset_session
 #      redirect_to root_url
 #    end

 #    def login
 #      session[:id] = params[:name]
 #      redirect_to root_url
 #    end

	def index
		@pools = Pool.all.order("game asc")
	end

	def show 
		the_pool_id = params["id"]
		@pool = Pool.find_by :id => the_pool_id
	end

	def destroy
    the_pool_id = params["id"]
    p = Pool.find_by(:id => the_pool_id)
    p.destroy
    redirect_to pools_url
    end

	def new 
	end

	def create 
		p = Pool.new
		p.game = params["game"]
		p.gamertag = params["gamertag"]
		p.ranking = params["ranking"]
		p.pool_group = params["pool_group"]
		p.save
		redirect_to pools_url
	end

	def edit
		the_pool_id = params["id"]
		@pool = Pool.find_by(:id => the_pool_id)
	end

	def update
	    the_pool_id = params["id"]
	    pool = Pool.find_by(:id => the_pool_id)
	    pool.game = params["game"]
	    pool.gamertag = params["gamertag"]
	    pool.ranking = params["ranking"]
	    pool.pool_group = params["pool_group"]
	    pool.save
	    redirect_to pools_url
	end

	
end