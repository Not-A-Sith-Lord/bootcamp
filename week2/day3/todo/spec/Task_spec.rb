require_relative("../lib/Task.rb")

RSpec.describe Task do 

	let :task do
		Task.new("Buy Milk")
	end

	describe "#complete?" do
		it "completed? is true" do
			expect(task.completed?).to eq(false)
		end
	end 

	describe "#completed!" do
		it "completed! is true" do
			expect(task.completed!).to eq(true)
		end
	end 

	describe "#make_incomplete!" do
		it "make_incomplete! is true" do
			expect(task.make_incomplete!).to eq(false)
		end
	end
	 
	
end


