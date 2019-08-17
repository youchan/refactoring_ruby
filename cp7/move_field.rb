class Account
  # attr_accessor :interest_rate
  def interest_for_amount_days(amount, days)
    @account_type.interest_rate * amount * days / 365
  end

  def interest_rate
    @account_type.interest_rate
  end
end
