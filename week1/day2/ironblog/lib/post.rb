require_relative("blog.rb")

class Post
	attr_accessor(:title,:date,:text)
	def initialize(title,date,text)
		@title = title
		@date = date
		@text = text
	end

	#define a print method 
end

