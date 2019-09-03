class Order
  attr_reader :customer

  def customer=(value)
    customer.friend_orders.subtract(self) unless customer.nil?
    @customer = value
    customer.friend_orders.add(self) unless customer.nil?
  end
end

class Customer
  def initialize
    @orders = Set.new
  end

  def add_order(order)
    order.set_customer(self)
  end

  def friend_orders
    #should only be used by Order when modifying the association
    @orders
  end
end
