class Account
  def interest_for_amount_days(amount, days)
    @account_type.interest_rate * amount * days / 365
  end
end

class AccountType
  attr_accessor :interest_rate
end
