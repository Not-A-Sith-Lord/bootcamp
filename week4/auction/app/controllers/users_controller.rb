class UsersController < ApplicationController

	def index
		@user = User.all
		render 'index'
	end

	def new
		@user = User.new
		render 'users/new'
	end

	def create
		@my_user = User.new(
			:name => params[:user][:name],
			:email => params[:user][:email])
		@my_user.save
		redirect_to user_path(@my_user)
	end

	def show
		@my_user = User.find(params[:id])
		@my_product = Product.where(:user_id => @my_user.id )
		render 'show'
	end


end
