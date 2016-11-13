class CommentsController < ApplicationController

	def new
		@my_concert = Concert.find(params[:concert_id])
		@my_comment = @my_concert.comment.new
	end

	def create
		@my_concert = Concert.find(params[:concert_id])
		@my_comment = @my_concert.comment.new(
			:title => params[:comment][:title],
			:content => params[:comment][:content])
		@my_comment.save
		redirect_to concert_path(@my_concert)
	end

end

