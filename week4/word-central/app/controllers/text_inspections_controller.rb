class TextInspectionsController < ApplicationController
	def new
		render 'new'
	end

	def create
    	@text = params[:text_inspection][:user_text]
    	@word_count = @text.split(" ").length.to_f
        @seconds = @word_count * 0.4583

        @count = Hash.new(0)
        @words = @text.split(" ")
        @words.each do |word|
            @count[word] +=1
        end

        @sorted = @count.sort_by do |word,count| -count end
        @top_ten_words = @sorted.first(10)
       







        render 'results'
    		# display the view at app/views/text_inspections/results.html.erb

       

  	end
end


