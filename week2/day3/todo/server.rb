require 'sinatra'
require 'sinatra/reloader'

require_relative("lib/Task.rb")
require_relative("lib/TodoList.rb")

#-----------------------------------

todo_list = TodoList.new


get "/home" do
	erb(:home)
end

get "/task_index" do
	@alltasks = todo_list.tasks
	erb(:task_index)
end

get "/new_task" do
	
	erb(:new_task)
end

post "/create_task" do
	@bullshit = Task.new(params[:newtask])
	todo_list.add_task(@bullshit)
	redirect "/task_index"
end

post "/complete" do
	todo_list.delete_task(params[:complete].to_i)
	redirect "/task_index"
end




#-----------------------------------

# todo_list = TodoList.new

# task1 = Task.new("Wake up")
# todo_list.add_task(task1)

# task2 = Task.new("run")
# todo_list.add_task(task2)

# task3 = Task.new("eat")
# todo_list.add_task(task3)

# task4 = Task.new("ironhack")
# todo_list.add_task(task4)

# task5 = Task.new("sleep")
# todo_list.add_task(task5)

#-----------------------------------

# my_list.show_tasks

# puts "--------------"

# my_list.find_task_by_id(3)

# puts task1.content
# puts task1.created_at

# task1.update_content!("do other stuff")

# puts task1.content
# puts task1.updated_at



