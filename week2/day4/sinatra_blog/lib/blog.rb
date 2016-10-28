class Blog

	def initialize
		@all_posts = []
	end

	def add_post(post)
		@all_posts.push(post)
	end

	def posts
		@all_posts
	end

	def latest_posts
		@all_posts.sort! do |a,b|
			b.date <=> a.date
		end
	end
end
