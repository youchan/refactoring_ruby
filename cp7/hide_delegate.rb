class Person
  extend Forwardable
  def_delegator :@department, :manager
  attr_accessor :department
end

class Department
  attr_reader :manager
  def initialize(manager)
    @manager = manager
  end
end

class RecordCollection
  extend Forwardable
  def_delegator :@records, :[], :record_number
  def_delegators :@re
end

manager = john.department.manager
