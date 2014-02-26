class CharactersController< ApplicationController


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
		@characters = Character.all.order("game asc")
	end

	def show 
		the_character_id = params["id"]
		@character = Character.find_by :id => the_character_id
	end

	def destroy
    the_character_id = params["id"]
    c = Character.find_by(:id => the_character_id)
    c.destroy
    redirect_to characters_url
    end

	def new 
	end

	def create 
		c.= Character.new
		c.game = params["game"]
		c.character = params["character"]
		c.image_url = params["image_url"]
		c.save
		redirect_to characters_url
	end

	def edit
		the_character_id = params["id"]
		@character = Character.find_by(:id => the_character_id)
	end

	def update
	    the_character_id = params["id"]
	    character = Character.find_by(:id => the_character_id)
	    character.game = params["game"]
	    character.character = params["character"]
	    character.image_url = params["image_url"]
	    character.save
	    redirect_to characters_url
	end




	
end