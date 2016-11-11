class ProductsController < ApplicationController

	def show
		@my_product = Product.find(params[:id])
		render 'show'
	end

	def new
		@user = User.find(params[:user_id])
		@product = Product.new
		render "new"
	end

	def create
		@user = User.find(params[:user_id])
		@my_product = Product.new(
			:title => params[:product][:title],
			:description => params[:product][:description],
			:deadline => params[:product][:deadline],
			:user_id => @user.id)
		@my_product.save!
		redirect_to user_path(@user)
	end

	def index
		@product = Product.all
		render 'index'
	end

	def global
		@product = Product.all
		render 'global'
	end

end

