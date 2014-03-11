class RegistrationsController < ApplicationController

  def index
    # @registration = Registration.all.order("game asc")
    @registration = Registration.find(:all, :conditions => {:user_id => session[:user_id]})
  end

	def show
    # Issue update- change this to display diff info later  # 
     the_registration_id = session[:registration_id]
    @registration = Registration.find_by :id => the_registration_id
    # @registration = Registration.find(:id)
    # @reg = Registration.find_by :id => the_registration_id
    # @reg = Registration.find(params[:id])

  end

  def create
  @id_array = params[:game]
  @id_array.each do  |gm|
      registration = Registration.new
      registration.name = params[:name]
      registration.gamertag = params[:gamertag]
      registration.address = params[:address]
      registration.game_id = gm
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

  def destroy 
    @reg = Registration.find(params[:id])
    # @the_registration_id = params["id"]
    # @m = Registration.find_by(:id => @the_registration_id)
    # @m.destroy
    @reg.destroy

    redirect_to "/registrations"
  end 


   def edit
    # the_registration_id = params["id"]
    # @registration = Registration.find_by(:id => the_registration_id)
    @registration = Registration.find(params[:id])
  end

  def update
    registration = Registration.find(params[:id])
     @id_array = params[:game_id]
   @id_array.each do  |gm|
      registration = Registration.find(params[:id])
      registration.name = params[:name]
      registration.gamertag = params[:gamertag]
      registration.address = params[:address]
      registration.game_id = gm
      registration.user_id = session[:user_id]
      registration.save
      # Registration.find(:all, :conditions => {:user_id => session[:user_id]})
      # player = Player.find(:all, :conditions => {:registration_id => params[:id]})
      # player.registration_id = registration.id
      # player.user_id = registration.user_id
      # player.save
      tournament = Tournament.find(:all, :conditions => {:registration_id => params[:id]})
      tournament.game_id = gm
      # tournament.registration_id = registration.id
      # tournament.player_id = player.id 
      # tournament.user_id = registration.user_id
      tournament.save
      # tourney = TourneyEntry.find(:all, :conditions => {:registration_id => params[:id]})
      # tourney.tournament_id = tournament.id
      # tourney.player_id = player.id 
      # tourney.registration_id = registration.id
      # tourney.user_id = registration.user_id
      # tourney.save 
      end
     #  tourney.save 

    redirect_to "/registrations"
  end


def new
   @registration = Registration.new

  end
end 