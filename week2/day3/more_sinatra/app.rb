require "sinatra"

require "sinatra/reloader" if development?

require "pry" if development?

enable(:sessions)

get "/save_to_session/:thing" do
	session[:beverage] = params[:thing]
	redirect to ("/")
end

get "/" do 
	@drink = session[:beverage]
	erb(:home)
end

# get "/login" do
# 	erb(:login)
# end

# post "/verify_login" do
# 	if params[:email] == "" && params[:password] == ""
# 		session[:user_logged_in] = true
# 		session[:user_email] = params[:email]
# 		redirect to("/profile")
# 	else
# 		@error_message = "bad login credentials"
# 	erb(:verify_login)
# end

get "/hi" do
	erb(:hipage)
end

get "/about" do
    #erb reference should be last
	erb(:about)
end

get "/best_pizza" do
	@toppings = ["pepperoni", "basil", "onions", "mozzarella"]
	binding.pry
	erb(:best_pizza)
end

get "/login" do
	erb(:login)
end