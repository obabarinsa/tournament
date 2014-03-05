class RegistrationsController < ApplicationController

  def index
    @registration = Registration.all.order("game asc")
  end

	def show
    # @registration = User.registration.find(params[:id])
    # @user = User.find(params[:id])
    # make ab array
    # if session[:registration_id] != @registration.id
    #   redirect_to root_url, notice: "No way!"
    # end
     the_registration_id = session[:registration_id]
    @registration = Registration.find_by :id => the_registration_id
    # @registration = Registration.find(:id)
  end

  def create
    # params[:game].each do   
      registration = Registration.new
      registration.name = params[:name]
      registration.gamertag = params[:gamertag]
      registration.address = params[:address]
      registration.game = params[:game]
      registration.user_id = session[:user_id]
      registration.save
      player = Player.new
      player.name = params[:name]
      player.gamertag = params[:gamertag]
      player.address = params[:address]
      player.registration_id = registration.id
      player.save
      tournament = Tournament.new
      tournament.game = params[:game]
      # tournament.event_id = Event.where(:game => registration.game)
      tournament.registration_id = registration.id 
      tournament.save
      tourney = TourneyEntry.new
      tourney.tournament_id = tournament.id
      tourney.player_id = player.id 
      tourney.registration_id = registration.id
      tourney.save 


    
      # tentry = TourneyEntry.new
      # tentry.tournament_id = 
    # end
    	session[:registration_id] = user_url(session[:user_id])
    	redirect_to registration_url(session[:user_id]), notice: "Registration Completed" 
      # redirect_to registration_url(session[:registration_id])
    	# user_url(session[:user_id])
      # else
    	 # registration.errors.inspect
	 # end
# end
   
  end


   def edit
    the_registration_id = params["id"]
    @registration = Registration.find_by(:id => the_registration_id)
  end

  def update
      the_registration_id = params["id"]
      registration = Registration.find_by(:id => the_registration_id)
      registration.name = params["name"]
      # registration.rules = params["rules"]
      registration.save
      redirect_to registrations_url
  end
end

def new
   @registration = Registration.new

  end
