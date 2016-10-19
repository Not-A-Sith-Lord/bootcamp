require_relative("post.rb")

class Blog

	attr_accessor(:posts)

	def initialize
		@posts = []
	end
	
	def add_post(post)
		@posts.push(post)
	end

	def show_sponsored(post)
		puts ""
		puts post.title
		puts "*******"
		puts post.text
		puts "_______"
	end

	def show_posts
		@posts.each do |post|
			puts ""
			puts post.title
			puts "**********"
			puts post.text
			puts "__________"
		end
	end

	def show_by_newest

		show_sponsored(Sponsored)

		@new_posts = @posts.sort do |post1,post2|
		post1.date <=> post2.date
		end

		@new_posts.each do |post|
			puts ""
			puts post.title
			puts "**********"
			puts post.text
			puts "__________"
			# show_sponsored(Sponsored)
		end
	end

	def show_pages

		# show_sponsored(Sponsored)

		@new_posts = @posts.sort do |post1,post2|
		post1.date <=> post2.date
		end

		if posts.length < 4
		@new_posts.each do |post|
			puts ""
			puts post.title
			puts "**********"
			puts post.text
			puts "__________"
			# show_sponsored(Sponsored)
						end
		else
			@new_posts[0..2].each do |post|
			puts ""
			puts post.title
			puts "**********"
			puts post.text
			puts "__________"
								  end
			puts "Page 1 of 3. type[next],[prev] or [exit]"
			answer = gets.chomp

			if answer === "next"
				@new_posts[3..5].each do |post|
				puts ""
				puts post.title
				puts "**********"
				puts post.text
				puts "__________"
				end

				puts "Page 1 of 3. type[next],[prev] or [exit]"
				answer = gets.chomp

				if answer === "next"
					@new_posts[6..8].each do |post|
				puts ""
				puts post.title
				puts "**********"
				puts post.text
				puts "__________"
										  end

				elsif answer === "exit"
					puts "goodbye"

				elsif answer === "prev"
					@new_posts[0..2].each do |post|
					puts ""
					puts post.title
					puts "**********"
					puts post.text
					puts "__________"
								  end

			end




			elsif answer === "prev"
				puts "does not compute"

			elsif answer === "exit"
				puts "goodbye"
				
			elsif answer === "prev"
				@new_posts[0..2].each do |post|
				puts ""
				puts post.title
				puts "**********"
				puts post.text
				puts "__________"	
				end
			end

		end
	end
end