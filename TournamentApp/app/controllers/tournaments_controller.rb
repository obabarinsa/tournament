class TournamentsController < ApplicationController

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