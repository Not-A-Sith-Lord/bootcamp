class SecretsController < ApplicationController

	# before_action :check_if_logged_in
	before_action :check_if_admin 

	def show
		get_current_user

		# if session[:user_id] && @current_user.role == "admin"
		# render :show
		# else
		# 	flash[:admin_only] = "not today ya goon"
		# 	redirect_to "/"
		# end

		render :show

	end

end
