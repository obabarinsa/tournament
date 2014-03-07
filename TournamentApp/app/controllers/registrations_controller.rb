class RegistrationsController < ApplicationController

  def index
    @registration = Registration.all.order("game asc")
  end

	def show
    # Issue update- change this to display diff info later  # 
     the_registration_id = session[:registration_id]
    @registration = Registration.find_by :id => the_registration_id
    # @registration = Registration.find(:id)
  end

  def create
  @id_array = params[:game]
  @id_array.each do  |gm|
      registration = Registration.new
      registration.name = params[:name]
      registration.gamertag = params[:gamertag]
      registration.address = params[:address]
      registration.game = gm
      registration.user_id = session[:user_id]
      registration.save
      player = Player.new
      player.registration_id = registration.id
      player.user_id = registration.user_id
      player.save
      tournament = Tournament.new
      tournament.game_id = gm
      tournament.registration_id = registration.id
      tournament.player_id = player.id 
      tournament.user_id = registration.user_id
      tournament.save
      tourney = TourneyEntry.new
      tourney.tournament_id = tournament.id
      tourney.player_id = player.id 
      tourney.registration_id = registration.id
      tourney.user_id = registration.user_id
      tourney.save 
     end
    
    	redirect_to user_url(session[:user_id]), notice: "Registration Completed" 
   
  end


   def edit
    the_registration_id = params["id"]
    @registration = Registration.find_by(:id => the_registration_id)
  end

  def update
      the_registration_id = params["id"]
      registration = Registration.find_by(:id => the_registration_id)
      registration.name = params["name"]
      registration.save
      redirect_to registrations_url
  end
end

def new
   @registration = Registration.new

  end
