class Queen

	attr_accessor(:x,:y)

	def initialize(x,y,color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(dest_x,dest_y)
		if (@x - dest_x).abs == (@y - dest_y).abs
			return "yes"

		elsif @x.abs == dest_x.abs || @y.abs == dest_y.abs	
			return "yes"
		
		else 
			return "no"
		end
	end

end