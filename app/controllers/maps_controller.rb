class MapsController < ApplicationController

	def index
		@locations = Location.all
		@location = Location.new
		@test = Location.all
		@test_array = []
		@test.each do |h|
			@test_array.push({lat: h.lat, lng: h.lng})
		end
	end

	private
	def location_params
    	params.require(:location).permit(:title, :lat, :lng)
  	end
	
end
