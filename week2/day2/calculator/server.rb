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

post "/calculate" do
	@num1 = params[:number1]
	@num2 = params[:number2]


if params[:button] == "add"
	@calculation = "+"
	@answer = calc.add(params[:number1].to_f,params[:number2].to_f)
elsif params[:button] == "subtract"
	@calculation = "-"
	@answer =calc.subtract(params[:number1].to_f,params[:number2].to_f)
elsif params[:button] == "multiply"
	@calculation = "x"
	@answer = calc.multiply(params[:number1].to_f,params[:number2].to_f)
elsif params[:button] == "divide"
	@calculation = "/"
	@answer = calc.divide(params[:number1].to_f,params[:number2].to_f)
else
	"not happening"
end
	erb(:calculate)
end


# post "/calculate_add" do
#   calc.add(params[:number1].to_f,params[:number2].to_f)
# end

# post "/calculate_subtract" do
#   calc.subtract(params[:number1].to_f,params[:number2].to_f)
# end

# post "/calculate_multiply" do
#   calc.multiply(params[:number1].to_f,params[:number2].to_f)
# end

# post "/calculate_divide" do
#   calc.divide(params[:number1].to_f,params[:number2].to_f)
# end



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










