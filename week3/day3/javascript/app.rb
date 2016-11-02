require_relative("lib/country_counter.rb")

countries = ["Puerto Rico","Puerto Rico",
				"USA","USA","USA",
				"France","Zimbabwe"]

# uppercase_countries = countries.map do |a_country|
# 	a_country.upcase 
# end

# uppercase_countries.each do |a_country|
# 	puts "some of us are form #{a_country}!!"
# end


the_counter = CountryCounter.new

p the_counter.count_countries("USA",countries) == 3
p the_counter.count_countries("Puerto Rico",countries) == 2
p the_counter.count_countries("Japan",countries) == 0