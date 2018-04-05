class LocationsController < ApplicationController


	def index
		@locations = Location.all
	end

	def create
		location = Location.new(location_params)
		if location.save
			redirect_to maps_path
		else 
			flash[:alert] = 'Sorry, please try again. That Location did not save.'
			render maps_path
		end
	end

	def show
		@location = Location.find(params[:id])
	end	

	def destroy
		@location = Location.find(params[:id])
    	@location.destroy
    	redirect_to "/maps"
	end
	
	
	private
	def location_params
    	params.require(:location).permit(:title, :lat, :lng, :description)
  	end
end
