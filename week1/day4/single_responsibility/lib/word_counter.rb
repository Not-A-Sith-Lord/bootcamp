require_relative('authenticator.rb')

class Word_counter
	
	def count_words
		puts @text_input.split.size
	end

end