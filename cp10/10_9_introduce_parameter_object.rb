class Account
  def add_charge(base_price, tax_rate, imported)
    total = base_price + base_price * tax_rate
    total += base_price * 0.1 if imported
    @charges << total
  end

  def total_charge
    @charges.inject(0) {|total, charge| total + charge}
  end
end

account.add_charge(5, 0.1, true)
account.add_charge(12, 0.125, false)
total = account.total_charge
