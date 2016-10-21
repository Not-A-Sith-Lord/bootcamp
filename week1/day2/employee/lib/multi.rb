require_relative("employee.rb")


class MultiPaymentEmployee < Employee
  require employee
	attr_reader(:name, :email, :salary, :overtime, :hours)
    def initialize(name, email, salary, overtime, hours)
        @name = name
        @email = email
        @salary = salary
        @overtime = overtime
        @hours = hours
    end

    def calculate_salary
      if hours > 40 
      	(@salary.to_f / 52) + ((@hours - 40) * @overtime)
      else
      	(@salary.to_f / 52)
      end
    end
end
