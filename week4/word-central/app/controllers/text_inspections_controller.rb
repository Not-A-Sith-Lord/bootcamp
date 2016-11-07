class TextInspectionsController < ApplicationController
	def new
		render 'new'
	end

	def create
    	@text = params[:text_inspection][:user_text]
    	@word_count = @text.split(" ").length.to_f

    	@seconds = @word_count * 0.4583
    	
    	render 'results'
    		# display the view at app/views/text_inspections/results.html.erb
  	end
end
