require_relative("lib/user.rb")
require_relative("lib/car.rb")

#------------------------

Nizar = User.new("Nizar","Nizar@ironhack",30,"ambiguous","male")
Jose = User.new("Jose","Jose@gmail",36,"ambiguous","male")


puts"----------------"

puts Jose.age
#------------------------

# quiet_car = Car.new("Broom")
# loud_car = Car.new("BROOOOM")

# quiet_car.honk
# loud_car.honk

Jose.age = 20
puts Jose.age