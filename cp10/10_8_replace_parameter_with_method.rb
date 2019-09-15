def price
  discounted_price
end

def base_price
  @quantity * @item_price
end

def discounted_price
  return base_price * 0.1 if discount_level == 2
  base_price * 0.05
end

def discount_level
  return 2 if @quantity > 100
  return 1
end
