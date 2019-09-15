# 6.6 説明用変数の導入(EXAMPLE)

def price
  # price is base price - quantity discount + shipping
  return base_price -
      [0, @quantity - 500].max * @item_price * 0.05 + [base_price * 0.1, 100.0].min
end

def base_price
  @quantity * @item_price
end
