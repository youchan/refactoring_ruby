class Order
  def initialize(customer)
    @customer = Customer.new(value)
  end

  def customer
    @customer.name
  end

  def customer=(value)
    @customer = Customer.new(value)
  end

  private

  def self.number_of_orders_for(orders, customer)
    orders.select { |order| order.customer == customer }.size
  end
end

class Customer
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
