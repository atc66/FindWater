class MapsController < ApplicationController

	def index
		@locations = Location.all
		@location = Location.new
		@test = Location.all
		@test_array = []
		@test.each do |h|
			@test_array.push({lat: h.lat, lng: h.lng})
		end
		@user = current_user
	end

	def show
		@user = User.all
	end

	private
	def location_params
    	params.require(:location).permit(:title, :lat, :lng)
  	end

  	def user_params
    	params.require(:user).permit(current_user.id)
  	end
	
end
