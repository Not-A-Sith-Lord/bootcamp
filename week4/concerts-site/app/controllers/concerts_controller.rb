class ConcertsController < ApplicationController

	def index
		@my_concert = Concert.all
		render :index
	end

	def show
		@my_concert = Concert.find(params[:id])
		render :show
	end
end
