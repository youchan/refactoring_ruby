class Order
  attr_accessor :customer
end

require 'set'

class Customer
  def friend_orders
    #should only be used by Order when modifying the association
    @orders
  end
end
