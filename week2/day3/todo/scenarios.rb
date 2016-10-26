require_relative("lib/Task.rb")
require_relative("lib/TodoList.rb")


my_list = TodoList.new

task1 = Task.new("Buy the milk")
task2 = Task.new("Do other stuff")

my_list.add_task(task1)
my_list.add_task(task2)






# my_list.show_tasks

# puts "--------------"

# my_list.find_task_by_id(3)

# puts task1.content
# puts task1.created_at

# task1.update_content!("do other stuff")

# puts task1.content
# puts task1.updated_at



