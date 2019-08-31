def withdraw(amount)
  raise BalanceError.new if amount > @balance
  @balance -= amount
end
