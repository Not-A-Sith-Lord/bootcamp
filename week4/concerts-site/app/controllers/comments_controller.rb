class CommentsController < ApplicationController

	def new
		@my_concert = Concert.find(params[:concert_id])
		@my_comment = @my_concert.comment.new
	end

	def create
		@my_concert = Concert.find(params[:concert_id])
		@my_comment = @my_concert.comment.new(entry_params)
		if @my_comment.save
			redirect_to concert_path(@my_concert)
		else
			render :new
		end
		
	end

	private

	def entry_params
		params.require(:comment).permit(:title,:content)
	end

end

