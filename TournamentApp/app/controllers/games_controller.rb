class GamesController < ApplicationController

def index
		@games = Game.all.order("game asc")
	end

	def show 
		the_game_id = params["id"]
		@game = Game.find_by :id => the_game_id
	end

	def destroy
    the_game_id = params["id"]
    g= Game.find_by(:id => the_game_id)
    g.destroy
    redirect_to games_url
    end

	def new 
	end

	def create 
		g = game.new
		g.rules = params["rules"]
		g.game = params["game"]
		g.image = params["image"]
		e.save
		redirect_to games_url
	end

	def edit
		the_game_id = params["id"]
		@game = Game.find_by(:id => the_game_id)
	end

	def update
	    the_game_id = params["id"]
	    game = Game.find_by(:id => the_game_id)
	    game.game = params["game"]
	    g.rules = params["rules"]
	    game.image = params["image"]
	    game.save
	    redirect_to games_url
	end	
end
