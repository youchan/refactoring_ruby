class Account
  def add_charge(charge)
    @charges << charge
  end

  def total_charge
    @charges.inject(0) do |total_for_account, charge|
      total_for_account + charge.total
    end
  end
end

class Charge
  attr_accessor :base_price, :tax_rate, :imported

  def initialize(base_price, tax_rate, imported)
    @base_price = base_price
    @tax_rate = tax_rate
    @imported = imported
  end

  def total
    result = @base_price + @base_price * @tax_rate
    result += @base_price * 0.1 if @imported
    result
  end
end

account.add_charge(5, 0.1, true, Charge.new(9.0, 0.1, true))
account.add_charge(12, 0.125, false, Charge.new(12.0, 0.125, true))
total = account.total_charge
