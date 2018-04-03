class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
    end

    def assign
    	@user = User.find(params[:id])
		@waterbottle = waterbottle.find(params[:waterbottleid])
		@user.waterbottles << @waterbottle
    	redirect_to "/waterbottle/#{@waterbottle.id}"
  	end

	private
	def waterbottle_params
		params.require(:waterbottle).permit(:volume, :user_id)
	end	
    
    def user_params
    	params.require(:user).permit(current_user.id)
  	end
end
