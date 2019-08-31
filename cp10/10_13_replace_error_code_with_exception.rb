if account.withdraw(amount) == -1
  handle_overdrawn
else
  do_the_usual_thing
end

class Account
  def withdraw(amount)
    begin
      new_withdraw(amount)
      return 0
    rescue BalanceExeption
      return -1
    end
  end

  def new_withdraw(amount)
    raise BalanceError.new if amount > @balance
    @balance -= amount
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
