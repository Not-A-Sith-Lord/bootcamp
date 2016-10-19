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
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Home6","Memphis", 5, 38),
  Home.new("Home7","Nashville", 10, 35),
  Home.new("Home8","Chat", 10, 30),
  Home.new("Home9","Knox", 10, 25),
  Home.new("Home10","Miss", 10, 20)
]

def print_Homes(homes)
	homes.each do |home|
		puts "name: #{home.name} city: #{home.city} capacity: #{home.capacity} price: #{home.price}"
	end
end

# puts "iteration 1"

# print_Homes(homes)

# puts"/iteration 1"


# puts "iteration 2"

# puts "Sort by price or capacity?"
# price_or_capacity = gets.chomp
    

# if price_or_capacity == "price"
#   sorted_homes = homes.sort do |home1,home2|
#     home1.price <=> home2.price
#   end
# elsif price_or_capacity == "capacity"
#   sorted_homes = homes.sort do |home1,home2|
#     home1.capacity <=> home2.capacity
#   end
# end

# print_Homes(sorted_homes)

# puts"/iteration 2"

# puts "iteration3"

# puts "what city do u wanna live in?"
# city = gets.chomp

# select_city = homes.select do |homes|
#   homes.city == city
# end

# print_Homes(select_city)

# puts "/iteration3"

# puts "iteration4"

# average_price = homes.reduce(0) do |sum,home|
#   sum += home.price
# end

# puts average_price.to_f / homes.length

# puts "/iteration4"

puts "iteration5"

puts "what the max you want to Pay?"
max_pay = gets.chomp.to_i

name_price = homes.select do |homes|
  homes.price <= max_pay
end

print_Homes(name_price)

puts "/iteration5"























