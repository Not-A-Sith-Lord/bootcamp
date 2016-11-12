class ConcertsController < ApplicationController

	def home
		render :home
	end

	def index
		@concert = Concert.all
		render :index
	end

	def show
		@concert = Concert.find(params[:id])
		@this_concert = []
		@comment = Comment.all
		@comment.each do |one_comment|
			if one_comment.concert_id.to_i == @concert.id.to_i
				@this_concert.push(one_comment)
			end
		end
		render :show
	end

	def new
		@my_concert = Concert.new
		render :new
	end

	def create
		@my_concert = Concert.new(
		:artist => params[:concert][:artist],
		:venue => params[:concert][:venue],
		:city => params[:concert][:city],
		:date => params[:concert][:date],
		:price => params[:concert][:price],
		:description => params[:concert][:description])
	  if @my_concert.save
		redirect_to concerts_path
	  else
		render :new
	  end
	end
end

