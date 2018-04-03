class WaterbottlesController < ApplicationController
	
	def index
		@waterbottles = Waterbottle.all
	end

	def create
		@waterbottle = Waterbottle.new(waterbottle_params)
		if @waterbottle.save
			redirect_to maps_path
		else 
			flash[:alert] = 'Sorry, please try again. Your waterbottle did not save.'
			render waterbottles_path
		end
	end

	def new
		@waterbottle = Waterbottle.new
	end

	def show
    	@waterbottle = Waterbottle.find(params[:id])
  	end


	def update
		@waterbottle = Waterbottle.find(params[:id])
    	if @waterbottle.update(waterbottle_params)
    		redirect_to @waterbottle
  		end
	end

	def destroy
		@waterbottle = Waterbottle.find(params[:id])
    	@waterbottle.destroy
    	redirect_to "/waterbottles"
	end


	private
	def waterbottle_params
		params.require(:waterbottle).permit(:volume)
	end	

	def user_params
    	params.require(:user).permit(current_user.id)
  	end
end
