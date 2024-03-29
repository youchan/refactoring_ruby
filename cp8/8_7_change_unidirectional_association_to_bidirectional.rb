require 'set'

# add, subtract は Setクラスのメソッド

class Order
  attr_reader :customer

  #controlling methods
  def add_customer(customer)
    customer.friend_orders.add(self)
    @customers.add(customer)
  end

  def remove_customer(customer)
    customer.friend_orders.subtract(self)
    @customers.subtract(customer)
  end
end

class Customer
  def friend_orders
    #should only be used by Order when modifying the association
    @orders
  end

  def add_order(order)
    order.add_customer(self)
  end

  def remove_order(order)
    order.remove_customer(self)
  end
end
