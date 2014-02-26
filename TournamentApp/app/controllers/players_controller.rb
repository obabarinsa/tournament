class PlayersController < ApplicationController
	
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