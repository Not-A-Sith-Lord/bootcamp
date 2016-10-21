require_relative("employee.rb")

class SalaryEmployee < Employee
	attr_accessor(:name,:email,:salary)
    def initialize(name, email, salary)
        @name = name
        @email = email
        @salary = salary
    end

    def calculate_salary
      @salary.to_f / 52
    end
end