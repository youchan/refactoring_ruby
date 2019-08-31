class Order
  attr_accessor :customer

  def initialize(customer_name)
    @customer = Customer.with_name(customer_name)
  end

  private

  def self.number_of_orders_for(orders, customer)
    orders.select { |order| order.customer == customer }.size
  end
end

class Customer
  attr_reader :name
  Instances = {}

  def initialize(name)
    @name = name
  end

  def self.with_name(name)
    Instances[name]
  end

  def self.load_customers
    new("Lemon Car Hire").store
    new("Associated Coffee Machines").store
    new("Bilston Gasworks").store
  end

  def store
    Instances[name] = self
  end
end

puts Order.new("ken")
