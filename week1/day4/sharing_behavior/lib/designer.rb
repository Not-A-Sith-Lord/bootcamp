
class Designer 
		include Payable
		include CaffeineConsumer

	def design_things

		puts "designing stuff"
		consume_caffeine
		select_typography
		select_colors
		recieve_salary
		
	end

	def select_typography
		puts "selecting typography"
	end

	def select_colors
		puts "selecting colors"
	end

end