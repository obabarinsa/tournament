class CharactersController< ApplicationController

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