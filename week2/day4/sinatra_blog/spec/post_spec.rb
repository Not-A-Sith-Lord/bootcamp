require "rspec"
require "rack/test"

require_relative("../lib/post.rb")

RSpec.describe Post do
	before(:each) do
		@post1 = Post.new("first","this is the first post")
		@post2 = Post.new("second","this is second post")
	end

	it("#title returns title") do
		expect(@post1.title).to eq("first")
		expect(@post2.title).to eq("second")
	end

	it("#date returns date") do
		expect(@post1.date).to eq(Date.today)
		expect(@post2.date).to eq(Date.today)
	end

	it("#text returns text") do
		expect(@post1.text).to eq("this is the first post")
		expect(@post2.text).to eq("this is second post")
	end
	
end