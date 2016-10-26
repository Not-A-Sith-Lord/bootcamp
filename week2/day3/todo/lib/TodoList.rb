class TodoList
    attr_reader (:tasks)

    def initialize
        @tasks = []
    end

    def add_task(task)
    	@tasks.push(task)
    end

    def show_tasks
    	@tasks.each do |task|
    		puts task.content
    	end
    end

    def delete_task(idnum)
    	@tasks.delete_if do |task|
    		task.id == idnum
    	end
	end

	def find_task_by_id(idnum)
		if @tasks[idnum] == nil
			nil
		else
		puts @tasks[idnum].content
		end
	end
end