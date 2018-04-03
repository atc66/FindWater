class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		@waterbottle = Waterbottle.where(user_id: current_user.id)
	end

  #   def assign
  #   	@user = User.find(params[:id])
		# @waterbottle = Waterbottle.find(params[:waterbottleid])
		# @user.waterbottles << @waterbottle
  #   	redirect_to "/waterbottles"
  # 	end

	private
	def waterbottle_params
		params.require(:waterbottle).permit(:volume, :user_id, :refills)
	end	
    
    def user_params
    	params.require(:user).permit(current_user.id)
  	end
end
