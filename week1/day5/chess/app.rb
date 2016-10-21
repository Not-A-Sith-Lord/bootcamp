# app.rb

require_relative("lib/pieces/rook.rb")
require_relative("lib/pieces/king.rb")
require_relative("lib/pieces/bishop.rb")
require_relative("lib/pieces/knight.rb")
require_relative("lib/pieces/queen.rb")
require_relative("lib/pieces/pawn.rb")



# /---------------------------------------------------------
#  ------------------------- ROOK --------------------------
#  ---------------------------------------------------------/

# black_rook_left = Rook.new(1, 8, "black")
# white_rook_right = Rook.new(8, 1, "white")


# puts "Valid Rook movements"
# puts "--------------------"

# p black_rook_left.can_move?(1, 5) == "yes"
# p black_rook_left.can_move?(5, 8) == "yes"
# p white_rook_right.can_move?(8, 3) == "yes"
# p white_rook_right.can_move?(2, 1) == "yes"


# puts "Invalid Rook movements"
# puts "----------------------"

 # p black_rook_left.can_move?(2, 7) == "no"
# p black_rook_left.can_move?(2, 5) == "no"
# p white_rook_right.can_move?(3, 5) == "no"
# p white_rook_right.can_move?(5, 6) == "no"

# puts ""



# # /---------------------------------------------------------
# #  ------------------------- KING --------------------------
# #  ---------------------------------------------------------/

# black_king = King.new(5, 8, "black")
# white_king = King.new(5, 1, "white")


# puts "Valid King movements"
# puts "--------------------"

# p black_king.can_move?(5, 7) == "yes"
# p black_king.can_move?(6, 7) == "yes"
# p white_king.can_move?(6, 2) == "yes"
# p white_king.can_move?(5, 2) == "yes"
# p white_king.can_move?(4, 1) == "yes"


# puts "Invalid King movements"
# puts "----------------------"

# p black_king.can_move?(5, 4) == "no"
# p black_king.can_move?(7, 5) == "no"
# p white_king.can_move?(7, 2) == "no"
# p white_king.can_move?(1, 5) == "no"
# p white_king.can_move?(1, 1) == "no"

#--------------------------------------------
#--------------- Bishop


# white_bishop_left = Bishop.new(2,1,"white")

# p white_bishop_left.can_move?(3,2) == "yes"
# p white_bishop_left.can_move?(1,1) == "yes"


#----------------------------- knight

# white_knight_right = Knight.new(2,1,"white")
# p white_knight_right.can_move?(3,3) == "yes"
# p white_knight_right.can_move?(4,1) =="no"

#-----------------------------------------

# white_queen = Queen.new(4,1,"white")
# p white_queen.can_move?(8,5) == "yes"

# p white_queen.can_move?(5,3) == "no"

#__________________________________________ pawn
# black_pawn = Pawn.new(1,2,"black")
# p black_pawn.can_move?(1,5) == "no"
# p black_pawn.can_move?(1,5) == "no"

black_pawn = Pawn.new(1,2,"black")
p black_pawn.can_move?(1,3) == "yes"
p black_pawn.can_move?(1,4) == "yes"
p black_pawn.can_move?(1,5) == "no"
p black_pawn.can_move?(1,1) == "no"

white_pawn = Pawn.new(1,5,"white")
p white_pawn.can_move?(1,3) == "no"



