class List
attr_accessor(:all_movies)
	def initialize#(movie)
		#@movie = movie
		@all_movies = []
	end

	# def add_movie(movie)
	# 	@all_movies.push(movie)
	# end

	def poster?(array)
		array.each do |movie|
			if movie.poster != nil
				@all_movies.push(movie)
			end
		end
	end

end

# i = Imdb::Search.new("Star Trek")

# i.movies.size
# #=> 97
