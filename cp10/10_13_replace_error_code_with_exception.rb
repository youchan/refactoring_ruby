if account.withdraw(amount) == -1
  handle_overdrawn
else
  do_the_usual_thing
end
