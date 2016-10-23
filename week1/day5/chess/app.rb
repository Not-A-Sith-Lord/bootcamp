

require_relative("lib/pieces/rook.rb")
require_relative("lib/pieces/king.rb")
require_relative("lib/pieces/bishop.rb")
require_relative("lib/pieces/knight.rb")
require_relative("lib/pieces/queen.rb")
require_relative("lib/pieces/pawn.rb")
require_relative("lib/pieces/board.rb")

game_board = Board.new

# black_rook_left = Rook.new(1, 1, "black","black_rook_left")
# game_board.add_piece(black_rook_left)
# p game_board.board_can_move?(1,1,2,1) == "yes"
# p game_board.board_can_move?(1,1,2,2) == "no"

# black_knight_left = Knight.new(2,1,"black","black_knight_left")
# game_board.add_piece(black_knight_left)
# p game_board.board_can_move?(2,1,3,3) == "yes"
# p game_board.board_can_move?(2,1,4,2) == "yes"
# p game_board.board_can_move?(2,1,3,2) == "no"

# black_bishop_left = Bishop.new(3,1,"black","black_bishop_left")
# game_board.add_piece(black_bishop_left)
# p game_board.board_can_move?(3,1,4,2) == "yes"
# p game_board.board_can_move?(3,1,5,2) == "no"

# black_queen = Queen.new(4,1,"black","black_queen")
# game_board.add_piece(black_queen)
# p game_board.board_can_move?(4,1,4,2) == "yes"
# p game_board.board_can_move?(4,1,5,2) == "yes"
# p game_board.board_can_move?(4,1,3,2) == "yes"
# p game_board.board_can_move?(4,1,5,3) == "no"

# black_king = King.new(5,1,"black","black_king")
# game_board.add_piece(black_king)
# p game_board.board_can_move?(5,1,6,1) == "yes"
# p game_board.board_can_move?(5,1,4,1) == "yes"
# p game_board.board_can_move?(5,1,5,2) == "yes"
# p game_board.board_can_move?(5,1,6,3) == "no"

black_pawn = Pawn.new(1,2,"black","black_pawn")
game_board.add_piece(black_pawn)
p game_board.board_can_move?(1,2,1,4) == "yes"
p game_board.board_can_move?(1,2,1,5) == "no"































