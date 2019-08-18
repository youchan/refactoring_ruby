# 7.6 横流しブローカーの除去

class Person
  attr_reader :department

  def initialize(department)
    @department = department
  end
end

class Department
  attr_reader :manager

  def initialize(manager)
    @manager = manager
  end
end

ken = Person.new(Department.new("john"))
p ken.department.manager
