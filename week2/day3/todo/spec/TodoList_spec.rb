require_relative("../lib/TodoList.rb")

RSpec.describe TodoList do 


	describe "#find_task_by_id ?" do
		it "completed? is true" do
			task1 = Task.new("blah blah task 1")
			todo_list = TodoList.new
			todo_list.add_task(task1)
			expect(todo_list.find_task_by_id(4)).to eq(task1)
		end
	end 

end