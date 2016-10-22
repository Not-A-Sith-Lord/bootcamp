

require_relative("lib/pieces/rook.rb")
require_relative("lib/pieces/king.rb")
require_relative("lib/pieces/bishop.rb")
require_relative("lib/pieces/knight.rb")
require_relative("lib/pieces/queen.rb")
require_relative("lib/pieces/pawn.rb")
require_relative("lib/pieces/board.rb")

 game_board = Board.new


black_rook_left = Rook.new(1, 1, "black","black_rook_left")

 # p black_rook_left.can_move?(2,1) == "yes"

 game_board.add_piece(black_rook_left)

 p game_board.board_can_move?(1,1,2,1)

 p game_board.board_can_move?(1,1,2,2)


















