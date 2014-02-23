class TournamentsController < ApplicationController

	def index
		@tournaments = Tournament.all.order("game asc")
	end

	def show 
		the_tournament_id = params["id"]
		@tournament = Tournament.find_by :id => the_tournament_id
	end

	def destroy
    the_tournament_id = params["id"]
    t = Tournament.find_by(:id => the_tournament_id)
    t.destroy
    redirect_to tournaments_url
    end

	def new 
	end

	def create 
		t = Tournament.new
		t.tournament = params["tournament"]
		t.game = params["game"]
		t.rules = params["rules"]
		t.save
		redirect_to tournaments_url
	end

	def edit
		the_tournament_id = params["id"]
		@tournament = tournament.find_by(:id => the_tournament_id)
	end

	def update
	    the_tournament_id = params["id"]
	    tournament = Tournament.find_by(:id => the_tournament_id)
	    tournament.game = params["game"]
	    tournament.rules = params["rules"]
	    tournament.save
	    redirect_to tournaments_url
	end




	
end