module Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
      @employees = []
    end

    def add_employee(employee)
    	@employees.add(employee)
    end

    def show_employees
    	puts @employees
    end
end
