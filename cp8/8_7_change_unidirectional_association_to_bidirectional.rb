class Order
  # attr_accessor :customer
  attr_reader :customer

  def customer=(value)
    customer.friend_orders.subtract(self) unless customer.nil?
    @customer = value
    customer.friend_orders.add(self) unless customer.nil?
  end
end

require 'set'

class Customer
  def friend_orders
    #should only be used by Order when modifying the association
    @orders
  end
end
