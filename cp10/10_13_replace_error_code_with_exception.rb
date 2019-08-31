if account.withdraw(amount) == -1
  handle_overdrawn
else
  do_the_usual_thing
end

class Account
  def withdraw(amount)
    return -1 if amount > @balance
    @balance -= amount
    return 0
  end

  def can_withdraw?(amount)
    true
  end
end

module Assertions
  class AssertionFailedError < StandardError; end
  class BalanceError < Standarderror; end

  def assert(message, &condition)
    unless condition.call
      raise AssertionFailedError.new("Assertion Failed: #{message}")
    end
  end
end
