require_relative("gameClass.rb")

class Room
	attr_accessor(:name,:description,:exit,:mistep,:deathtrap,:deathtrap2,:deathtrap3)

	def initialize(name,description,exit,mistep,deathtrap,deathtrap2,deathtrap3)
		@name = name
		@description = description
		@exit = exit
		@mistep = mistep
		@deathtrap = deathtrap
		@deathtrap2 = deathtrap2
		@deathtrap3 = deathtrap3
	end

end



