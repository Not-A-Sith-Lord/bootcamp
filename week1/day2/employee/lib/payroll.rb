require_relative("employee.rb")


class Payroll

	

    def initialize(employees)
        @employees = employees
    end

  def pay_employees
  	total_salary = 0
      @employees.each do |x|
      	total_salary = x.salary + total_salary
      	tax_salary = x.salary * 0.82
      
      	 puts "#{x.name} salary is #{tax_salary}"
      end
   puts "Total pay this week is #{total_salary}"
  end

  def notify_employee(employee)
  	puts " #{employee.name} is being emailed at #{employee.email} his payroll of #{employee.salary}"
  end
end