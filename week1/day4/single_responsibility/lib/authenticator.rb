require_relative('word_counter.rb')

class Authenticator
	attr_accessor(:text_input)
	
	def initialize(username,password)
		@username = username
		@password = password
		@text_input = []
	end

	def verify

			puts "What is your username?"
			username_input = gets.chomp
			puts "What is your passowrd"
			password_input = gets.chomp

		if username_input == @username && password_input == @password
			puts 'acces granted'
			puts 'put some word in to sort'
			@text_input = gets.chomp
			
		else
			puts "access denied"
		end
	end
end