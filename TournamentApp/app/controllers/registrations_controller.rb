class RegistrationsController < ApplicationController

     # before_action :set_registration, only: [:show, :edit, :update, :destroy]

  def index
    @registration = Registration.find(:all, :conditions => {:user_id => session[:user_id]})
  end  


	def show
     the_registration_id = session[:registration_id]
    @registration = Registration.find_by :id => the_registration_id
  

  end

  def create
  @id_array = params[:game]
  @id_array.each do  |gm|
      @registration = Registration.new
      @registration.name = params[:name]
      @registration.gamertag = params[:gamertag]
      @registration.address = params[:address]
      @registration.game_id = gm
      @registration.user_id = session[:user_id]
      @registration.save
      @player = Player.new
      @player.registration_id = @registration.id
      @player.user_id = @registration.user_id
      @player.save
      @tournament = Tournament.new
      @tournament.game_id = gm
      @tournament.registration_id = @registration.id
      @tournament.player_id = @player.id 
      @tournament.user_id = @registration.user_id
      @tournament.save
      @pool = Pool.new
      @pool.player_id = @player.id
      @pool.game_id = gm
      @pool.save
      @tourney = TourneyEntry.new
      @tourney.tournament_id = @tournament.id
      @tourney.player_id = @player.id 
      @tourney.registration_id = @registration.id
      @tourney.user_id = @registration.user_id
      @tourney.pool_id = @pool.id
      @tourney.save 
    end

     
    if @registration.save
    	redirect_to user_url(session[:user_id]), notice: "Registration Completed" and return
    else
      # render user.errors.inspect
      redirect_to new_registration_path, notice: "Field Invalid, name or gamertag has to be between 6-20 characters, all fields must be filled in" and return 
  end
end

  def destroy 
    @reg = Registration.find(params[:id])
    @reg.destroy

    redirect_to "/registrations"
  end 


   def edit
    @registration = Registration.find(params[:id])
  end

  def update
     @id_array1 = params[:game]
  @id_array1.each do  |gm|
    the_registration_id = params["id"]
    r = Registration.find_by(:id => the_registration_id)
    r.name = params["name"]
    r.gamertag = params["gamertag"]
    r.address = params["address"]
    r.game_id = gm
    r.save
    g = Tournament.find_by(:registration_id => params["id"])
    g.game_id = r.game.id
    g.save
    z = g.player_id 
    p = Pool.find_by(:player_id => z)
    p.game_id = r.game.id
    p.save
    
   
    
  end
  # @registration = Registration.update_attributes()
   # if @registration.update(registration_params)
    redirect_to "/registrations/", :notice => "Your registration has been updated"
   #   else
   #     render 'edit'
   #   end 
   
   end

  # private 
  #    def set_registration
  #          @registration = Registration.find(params[:id])
  #    end 

  #    def registration_params
  #     params.require(:registration).permit(:name, :gamertag, :address, :game_id)
  #    end




def new
   @registration = Registration.new

  end
end 