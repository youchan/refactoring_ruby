if !account.can_withdraw?(amount)
  handle_overdrawn
else
  account.withdraw(amount)
end
