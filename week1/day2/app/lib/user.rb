class User

	def initialize(name,email,age,ethnicity,gender)
		@name = name
		@email = email
		@age = age
		@ethnicity = ethnicity
		@gender = gender
	end

	def login 
		puts "#{@name} logs in email #{@email}"
	end

	def greet
		puts "Hello, I'm #{@name}, I am #{@age} years old"
	end

	attr_accessor(:name,:email,:age,:ethnicity,:gender)
	
end

