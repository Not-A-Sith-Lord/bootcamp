class Rook

	attr_accessor(:x,:y,:color,:name)

	def initialize(x,y,color,name)
		@x = x
		@y = y
		@color = color
		@name = name
	end

	def can_move?(dest_x,dest_y)
		if @x == dest_x || @y == dest_y
			return "yes"
		else
			return "no"
		end
	end

end