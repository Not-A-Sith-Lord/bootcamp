require "sinatra"
require "sinatra/reloader"
require_relative "lib/blog.rb"
require_relative "lib/post.rb"

#-------------------------------------------------------------

blog = Blog.new

post1 = Post.new("post1","text for post1")
post2 = Post.new("post2","more text for post2")
post3 = Post.new("post3","even more text for post3")

blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)

#-------------------------------------------------------------


get "/" do
	@posts = blog.latest_posts
	erb(:home)
end