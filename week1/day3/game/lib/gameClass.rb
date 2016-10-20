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

		while pos < 6
			puts "You are in room #{@list_of_rooms[pos].name}. Which way would you like to go?(n,s,e,w)"
			user_input = gets.chomp
			if user_input == @list_of_rooms[pos].exit
				pos +=1
			elsif user_input ==@list_of_rooms[pos].mistep
				puts @list_of_rooms[pos].deathtrap
				user_input = gets.chomp
				if user_input == "yes"
					#left off here
					puts @list_of_rooms[pos].deathtrap2
						if ((@list_of_rooms[pos].name % 2) != 0)
							puts "game over"
							pos +=7
						end
				elsif user_input =="no"
					puts @list_of_rooms[pos].deathtrap3		
				end
		
			else 
				puts "That didn't work"
			end
		end
	end
end