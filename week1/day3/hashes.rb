# superman = {
# 	:name => "superman",
# 	:superpowers => ["flight","superstrenth"],
# 	:realname => "calel",
# 	:city => "metropolis",
# 	:comicsco => "dc",
# 	:nemesis => "lex luthor"
# }

# puts superman[:city]

#------------------------------

superheroes = [0, 1, 2, { :allies => [0, 1, { :superpowers => [0, { :name => "teleportation"}] }] }]
#this should print out "teleportation"
puts superheroes[3][:allies][2][:superpowers][1][:name]

#------------------------------

hash = {
	:wat => [0,1,{:wut => [0,[[0,1,2,3,4,5,6,7,8,{:bbq => "ribs"}]]]}]
}
puts hash[:wat][2][:wut][1][0][9][:bbq]

#------------------------------

arr = [[0,1,2,3,4,{:secret =>{:unlock =>[0,"derp"]}}]]

puts arr[0][5][:secret][:unlock][1]

