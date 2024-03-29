class Order
  def initialize(customer_name)
    @customer = Customer.new(customer_name)
  end

  def customer_name
    @customer.name
  end

  def customer=(customer_name)
    @customer = Customer.new(customer_name)
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
