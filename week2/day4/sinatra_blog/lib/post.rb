class Post

	def initialize(title,text)
		@title = title
		@text = text
		@date = Time.now
	end

	def title
		@title
	end

	def date
		@date
	end

	def text
		@text
	end

end