ENGINEER = 0
SALESPERSON = 1
MANAGER = 2

def self.create(type)
  case type
  when ENGINEER
    Engineer.new
  when SALESPERSON
    Salesperson.new
  when MANAGER
    Manager.new
  else
    raise ArgumentError, "Incorrect type code value"
  end
end
