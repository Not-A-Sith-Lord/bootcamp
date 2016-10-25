require "sinatra"

get "/" do 
	erb(:home)
end

get "/hi" do
	erb(:hipage)
end

get "/about" do
    #erb reference should be last
	erb(:about)
end

get "/best_pizza" do
	@toppings = ["pepperoni", "basil", "onions", "mozzarella"]
	erb(:best_pizza)
end