class PlayersController < ApplicationController

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
		@players = Player.all.order("game asc")
	end

	def show 
		the_player_id = params["id"]
		@player = Player.find_by :id => the_player_id
	end

	def destroy
    the_player_id = params["id"]
    p = Player.find_by(:id => the_player_id)
    p.destroy
    redirect_to players_url
    end

	def new 
	end

	def create 
		p = Player.new
		p.name = params["name"]
		p.gamertag = params["gamertag"]
		p.address = params["address"]
		p.save
		redirect_to players_url
	end

	def edit
		the_player_id = params["id"]
		@player = Player.find_by(:id => the_player_id)
	end

	def update
	    the_player_id = params["id"]
	    player = Player.find_by(:id => the_player_id)
	    player.name = params["name"]
	    player.gamertag = params["gamertag"]
	    player.save
	    redirect_to players_url
	end


	
end