require "rspec"
require "rack/test"

require_relative("../lib/blog.rb")

RSpec.describe Blog do 
	before(:each) do
		@blog = Blog.new()
	end

	it ("#posts returns list of posts") do
		expect(@blog.posts).to eq([])
	end

	it ("#add_post") do
		post1 = Post.new("post1","this is post1")
		@blog.add_post(post1)
		expect(post1.title).to eq("post1")
	end

end