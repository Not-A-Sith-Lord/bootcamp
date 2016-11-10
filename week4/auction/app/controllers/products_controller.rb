class ProductsController < ApplicationController
	def show
		@my_product = Product.find(params[:id])
		render 'show'
	end
end

