class King

	attr_accessor(:x,:y)

	def initialize(x,y,color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(dest_x,dest_y)

		if (@x - dest_x).abs == 1 || (@y - dest_y).abs == 1
		return "yes" 
		else
			retutrn "no"
		end
	end

end