# 6.6 説明用変数の導入(EXAMPLE)

def price
  base_price = @quantity * @item_price
  quantity_discount = [0, @quantity - 500].max * @item_price * 0.05
  shipping = [base_price * 0.1, 100.0].min

  base_price - quantity_discount + shipping
end
