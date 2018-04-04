class WaterbottlesController < ApplicationController
	
	def index
		@waterbottles = Waterbottle.all
	end

	def create
		@waterbottle = Waterbottle.new(waterbottle_params)
		if @waterbottle.save
			redirect_to "/users/#{current_user.id}"
		else 
			flash[:alert] = 'Sorry, please try again. Your waterbottle did not save.'
			render new_waterbottle_path
		end
	end

	def new
		@waterbottle = Waterbottle.new
	end

	def show
    	@waterbottle = Waterbottle.find(params[:id])
    	@users = User.all
  	end


  	def edit 
  		@waterbottle = Waterbottle.find(params[:id])
  	end


	def update
		# @user = User.current_user.id
		#@waterbottle = Waterbottle.where(user_id: current_user.id)
		@waterbottle = Waterbottle.find(params[:id])
    	if @waterbottle.update(waterbottle_params)
    		redirect_to "/users/#{current_user.id}"
  		end
	end

	def destroy
		@waterbottle = Waterbottle.find(params[:id])
    	@waterbottle.destroy
    	redirect_to "/users/#{current_user.id}"
	end

	private
	def waterbottle_params
		params.require(:waterbottle).permit(:volume, :user_id, :refills)
	end	

	def user_params
    	params.require(:user).permit(current_user.id)
  	end
end
