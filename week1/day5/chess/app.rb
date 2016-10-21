

require_relative("lib/pieces/rook.rb")
require_relative("lib/pieces/king.rb")
require_relative("lib/pieces/bishop.rb")
require_relative("lib/pieces/knight.rb")
require_relative("lib/pieces/queen.rb")
require_relative("lib/pieces/pawn.rb")
require_relative("lib/pieces/board.rb")

game_board = Board.new


black_rook_left = Rook.new(1, 1, "black")
game_board.add_piece(black_rook_left)

board_can_move?(1,1,2,1)



















