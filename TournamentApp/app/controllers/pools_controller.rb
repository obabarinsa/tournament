class PoolsController < ApplicationController
  helper_method :sort_column, :sort_direction

	before_action :require_login, :except => [:home, :login]
    before_action :identify_user

    def identify_user
      user = User.find_by(id: session[:user_id])
      if user
        @username = user.name
      end
    end

    def require_login
      if session[:user_id].blank?
        redirect_to root_url, notice: "Need to Sign Up to view this feature"
      end
    end

    def logout
      reset_session
      redirect_to root_url
    end

    def login
      session[:id] = params[:name]
      redirect_to root_url
    end
    
	def index
	
	 @pools = Pool.all.order(sort_column + " " + sort_direction)
    # @pools = Tournament.where(:user_id => params[:id])

	end
    private
  
  def sort_column
    Pool.column_names.include?(params[:sort]) ? params[:sort] : "game_id"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

	def show
    # p  = params["id"]
    @pool = Tournament.where(:user_id => params['id'])

     # @pools = Pool.all.order(sort_column + " " + sort_direction)

   end

	def destroy
    the_pool_id = params["id"]
    p = Pool.find_by(:id => the_pool_id)
    p.destroy
    redirect_to pools_url
    end

	# def new 
 #    @pool = Pool.all
	# end

	
	
end