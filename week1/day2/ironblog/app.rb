require_relative("lib/blog.rb")
require_relative("lib/post.rb")

Blog1 = Blog.new

Post1 = Post.new("firstPost","10/20/2016","this is the first post")
Blog1.add_post(Post1)

Post2 = Post.new("secondPost","10/19/2016","this is the second post")
Blog1.add_post(Post2)

Post3 = Post.new("thirdPost","10/18/2016","this is the third post")
Blog1.add_post(Post3)

Post4 = Post.new("fourthPost","10/21/2016","this is the fourth post")
Blog1.add_post(Post4)

Post5 = Post.new("fifthPost","10/22/2016","this is the fifth post")
Blog1.add_post(Post5)

Post6 = Post.new("sixthPost","10/23/2016","this is the sixth post")
Blog1.add_post(Post6)

Post7 = Post.new("seventhPost","10/24/2016","this is the seventh post")
Blog1.add_post(Post7)

Post8 = Post.new("eightPost","10/25/2016","this is the eighth post")
Blog1.add_post(Post8)

Sponsored = Post.new("SponsoredPost","10/17/2016","sponsored post!")
#sponsored post should be inhereted class

Blog1.show_pages
