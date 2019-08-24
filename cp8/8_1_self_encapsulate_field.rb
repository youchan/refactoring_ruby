attr_reader :base_price, :tax_rate

def total
  base_price * (1 + tax_rate)
end
