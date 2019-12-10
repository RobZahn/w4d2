class Employee
    attr_reader :salary
    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end
end


class Manager < Employee
    attr_reader :employees
    def initialize(employees)
        @employees = []
        super
    end

    def bonus(multiplier)
        #return sum unless person.is_a?(Manager)
        sum = 0
        @employees.each do |person|
            if person.is_a(Mananger)
                person.employees
            end
        end
        bonus = sum * multiplier
    end
end
#BASE
# MANAGER(self) = > [EMPLOYEES] = > EACH EMP.is_a(Manager), IF THEY ARE A MANAGER, MANAGER.employees