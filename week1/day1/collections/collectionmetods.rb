class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

def print_Homes(homes)
	homes.each do |home|
		puts "name: #{home.name} city: #{home.city} capacity: #{home.capacity} price: #{home.price}"
	end
end

# total_capacities = homes.reduce(0) { |sum,home|
# 	sum += home.capacity	
# }

# puts total_capacities.to_f / homes.length

puts "--------------"

# san_juan_homes = homes.select do |home|
# 	home.city == "San Juan"
# end

# print_Homes(san_juan_homes)

puts "--------------"

# high_capacity_homes = homes.select do |home|
# 	home.capacity >= 4
# end

# print_Homes(high_capacity_homes)

puts "--------------"

# home_47_dollars = homes.find do |home|
# 	home.price == 47
# end

# puts home_47_dollars.name

puts "---------------"

# sorted_by_price = homes.sort do |home1,home2|
# 	home1.price <=> home2.price 
# end

# print_Homes(sorted_by_price)

puts "---------------"

print_Homes(homes)













