require_relative("employee.rb")
class HourlyEmployee < Employee
	attr_accessor(:name,:email,:hourly_rate,:hours_worked,:salary)
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
        @salary = calculate_salary
    end

    def calculate_salary
      @hourly_rate * @hours_worked
    end
end