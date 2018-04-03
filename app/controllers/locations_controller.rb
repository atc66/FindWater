class LocationsController < ApplicationController

	def create
		location = Location.new(location_params)
		if location.save
			redirect_to maps_path
		else 
			flash[:alert] = 'Sorry, please try again. That Location did not save.'
			render maps_path
		end
	end
	
	
	private
	def location_params
    	params.require(:location).permit(:title, :lat, :lng)
  	end
end
