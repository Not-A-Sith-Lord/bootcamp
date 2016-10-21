require_relative("roomClass.rb")


class Game

	attr_accessor(:list_of_rooms)

	def initialize
		@list_of_rooms = []
	end

	def add_room(room)
		@list_of_rooms.push(room)
	end

	def start_game
		pos = 0
		life = 100

		while life >= 0
			puts "You are in room #{@list_of_rooms[pos].name}"  
			
			puts @list_of_rooms[pos].deathtrap
			user_input = gets.chomp
			
			if user_input == @list_of_rooms[pos].liveanswer
				puts @list_of_rooms[pos].deathtrap3
				puts "which way do you want to go [n,s,e,w]"
				user_input = gets.chomp

					while user_input != @list_of_rooms[pos].exit
						puts "try another way"
						puts "which way do you want to go [n,s,e,w]"
						user_input = gets.chomp
					end

					if user_input == @list_of_rooms[pos].exit
						pos += 1
					end
							
				elsif user_input == @list_of_rooms[pos].dieanswer
					puts @list_of_rooms[pos].deathtrap2
					life -= 50	
					puts "you have #{life} health"
					if life <= 0
						puts "game over"
						abort
					end
					puts "which way do you want to go [n,s,e,w]"
					user_input = gets.chomp
					while user_input != @list_of_rooms[pos].exit
						puts "try another way"
						puts "which way do you want to go [n,s,e,w]"
						user_input = gets.chomp
					end

					if user_input == @list_of_rooms[pos].exit
						pos += 1
					end	
			end
		end
	end
end