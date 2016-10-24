class StringCalculator

	def add(string = "")
		split_string = string.gsub("$",",").split(",")
		sum = 0
		split_string.each do |x|
			x = x.to_i
			sum += x
		end
	
		return sum

	end
end