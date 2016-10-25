require "sinatra"

require_relative("lib/calculator.rb")

get "/home" do
  erb(:home)
end


# params ={
# 	"number1"=>"2",
# 	"number2"=>"3",
# 	"button"=>"add"
# 	}

# post "/calculate_add" do
#   "Params data: " + params.inspect
#    # erb(:calculate_add)
# end

calc = Calculator.new


post "/calculate_add" do
  calc.add(params[:number1].to_f,params[:number2].to_f)
end

post "/calculate_subtract" do
  calc.subtract(params[:number1].to_f,params[:number2].to_f)
end

post "/calculate_multiply" do
  calc.multiply(params[:number1].to_f,params[:number2].to_f)
end

post "/calculate_divide" do
  calc.divide(params[:number1].to_f,params[:number2].to_f)
end



# post "/calculate_add" do
#   first = params[:number1].to_f
#   second = params[:number2].to_f
#   result = first + second
#   "#{first} + #{second} = #{result}"
# end

# post "/calculate_subtract" do
#   first = params[:number1].to_f
#   second = params[:number2].to_f
#   result = first - second
#   "#{first} - #{second} = #{result}"
# end

# post "/calculate_multiply" do
#   first = params[:number1].to_f
#   second = params[:number2].to_f
#   result = first * second
#   "#{first} x #{second} = #{result}"
# end

# post "/calculate_divide" do
#   first = params[:number1].to_f
#   second = params[:number2].to_f
#   result = first / second
#   "#{first} / #{second} = #{result}"
# end










