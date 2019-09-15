class Account
  def add_charge(tax_rate, imported, charge=nil)
    total = charge.base_price + charge.base_price * tax_rate
    total += charge.base_price * 0.1 if imported
    @charges << total
  end

  def total_charge
    @charges.inject(0) {|total, charge| total + charge}
  end
end

class Charge
  attr_accessor :base_price, :tax_rate, :imported

  def initialize(base_price, tax_rate, imported)
    @base_price = base_price
    @tax_rate = tax_rate
    @imported = imported
  end
end

account.add_charge(5, 0.1, true, Charge.new(9.0, nil, nil))
account.add_charge(12, 0.125, false, Charge.new(12.0, nil, nil))
total = account.total_charge
