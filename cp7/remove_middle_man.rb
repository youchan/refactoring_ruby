# 7.6 横流しブローカーの除去

class Person
  attr_reader :manager

  def initialize(department)
    @department = department
  end

  def manager
    @department.manager
  end
end

class Department
  attr_reader :manager

  def initialize(manager)
    @manager = manager
  end
end

ken = Person.new(Department.new("john"))
manager = ken.manager
p manager
