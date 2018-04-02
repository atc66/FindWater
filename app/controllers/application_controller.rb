class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	helper_method :logged_in?,

	def logged_in?
		current_user != nil
	end

  def application
  	@location = Location.new
  end

	private
	def location_params
    	params.require(:location).permit(:title, :lat, :lng)
  	end

end
