require_relative("../lib/fizzbuzzer.rb")
require_relative("../scenarios.rb")

RSpec.describe FizzBuzzer do  
	describe "#fizz_buzz" do

		it "return number as string" do
		expect(FizzBuzzer.new.fizz_buzz(7)).to eq("7")
		end

		it "return multiple of 3 as fizz" do
		expect(FizzBuzzer.new.fizz_buzz(3)).to eq("fizz")
		end

		it "return multiple of 5 as buzz" do
		expect(FizzBuzzer.new.fizz_buzz(5)).to eq("buzz")
		expect(FizzBuzzer.new.fizz_buzz(55)).to eq("buzz")
		end

		it "return mult of 3 and 5 as fizzbuzz" do
		expect(FizzBuzzer.new.fizz_buzz(15)).to eq("fizzbuzz")
		expect(FizzBuzzer.new.fizz_buzz(45)).to eq("fizzbuzz")
		end

end
end