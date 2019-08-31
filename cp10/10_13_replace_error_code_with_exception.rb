def withdraw(amount)
  return -1 if amount > @balance
  @balance -= amount
  0
end
