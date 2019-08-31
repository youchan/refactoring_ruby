if !account.can_withdraw?(amount)
  handle_overdrawn
else
  account.withdraw(amount)
end

def withdraw(amount)
  raise ArgumentError.new if amount > @balance
  @balance -= amount
end
