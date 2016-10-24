require_relative("../lib/string_calculator.rb")

RSpec.describe StringCalculator do  
	describe "#add" do

		# the_calc = StringCalculator.new

		let :the_calc do
			StringCalculator.new
		end

		it "adds to numbers separated by commas" do
			
			expect(the_calc.add("7,7")).to eq(14)
			expect(the_calc.add("8,4")).to eq(12)
		end

		it "return a single number" do
			expect(the_calc.add("6")).to eq(6)
			expect(the_calc.add("3")).to eq(3)
		end

		it "returns 0 for empty string" do
			expect(the_calc.add("")).to eq(0)
		end

		it "adds numbers ignores extra characters" do
			expect(the_calc.add("7$7")).to eq(14)
		end

		it "returns 0 if no argument given" do
			expect(the_calc.add()).to eq(0)
		end

		it "adds a double digit number" do
			expect(the_calc.add("7$7,1,21")).to eq (36)
		end
	end
end