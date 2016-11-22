class SessionsController < ApplicationController

	def new
		if session[:user_id]
      		redirect_to '/'
    	else
    	    render :new
    	end
	end

	def create
		user_maybe = User.find_by(email: params[:email])

		if user_maybe == nil
			redirect_to '/login'
		elsif user_maybe.authenticate(params[:password]) == false
			redirect_to '/login'
		else
			session[:user_id] = user_maybe.id 
			redirect_to '/'
		end
	end


	def destroy
		# session[:user_id] = nill
		session.clear
		redirect_to '/'
	end

end
