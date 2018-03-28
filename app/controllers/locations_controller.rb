class LocationsController < ApplicationController

	def create
		location = Location.new(location_params)
		if location.save
			redirect_to root_path
		else 
			render root_path
		end

	end


	private
	def location_params
    	params.require(:location).permit(:title, :lat, :lng)
  	end
end
