class Calculator

	def add(num1,num2)
		answer = num1 + num2
		"#{num1} + #{num2} = #{answer}"
	end

	def subtract(num1,num2)
		answer = num1 - num2
		"#{num1} - #{num2} = #{answer}"
	end

	def multiply(num1,num2)
		answer = num1 * num2
		"#{num1} x #{num2} = #{answer}"
	end

	def divide(num1,num2)
		answer = num1 / num2
		"#{num1} / #{num2} = #{answer}"
	end

end






# post "/calculate_add" do
#   first = params[:number1].to_f
#   second = params[:number2].to_f
#   result = first + second
#   "#{first} + #{second} = #{result}"
# end