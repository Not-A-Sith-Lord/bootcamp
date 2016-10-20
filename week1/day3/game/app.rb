require_relative("lib/roomClass.rb")
require_relative("lib/gameClass.rb")

Room0 = Room.new(0,'white','w','e','Oh look its a bear. Take a selfie? [yes] or [no]','the bear just bit your head off','nice move')
Room1 = Room.new(1, 'yellow','s','n','Its a lion. Pet it?', 'lions love to be pet','shouldve pet the lion. they like that. he slashed your jugular')
Room2 = Room.new(2, 'red','e','w','look out','your dead','still alive')
Room3 = Room.new(3, 'blue','s','n','look out','your dead','still alive')
Room4 = Room.new(4, 'black','w','e','look out','your dead','still alive')
Room5 = Room.new(5, 'gold','n','s','look out','your dead','still alive')

the_game = Game.new

the_game.add_room(Room0)
the_game.add_room(Room1)
the_game.add_room(Room2)
the_game.add_room(Room3)
the_game.add_room(Room4)
the_game.add_room(Room5)

the_game.start_game

# 1 to test the add_room method
# the_game.print_rooms



