class Account
  include Assertions

  def withdraw(amount)
    assert("amonunt too large") { amount > @balance }
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

if !account.can_withdraw?(amount)
  handle_overdrawn
else
  account.withdraw(amount)
end
