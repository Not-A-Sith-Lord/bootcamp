class Board

	def initialize
		@pieces = [nil,[],[],[],[],[],[],[],[]]
	end

	def add_piece(piece)
		@pieces[piece.x][piece.y]
	end

	def board_can_move?(x1,y1,x2,y2)
	end

end