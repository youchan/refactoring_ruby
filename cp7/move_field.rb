class Account
  # attr_accessor :interest_rate
  extend Forwardable

  # NOTE
  # def_delegator(accessor, method, ali = method) -> ()
  # accessor: 委譲先のオブジェクト
  # method    委譲先のメソッド
  # ali       委譲元のメソッド
  def_delegator :@account_type, :interest_rate, :interest_rate=
  # Accountのオブジェクトで interest_rate= が呼び出された場合
  # @account_typeのinterest_rateを呼び出す

  def interest_for_amount_days(amount, days)
    @account_type.interest_rate * amount * days / 365
  end

  def interest_rate
    @account_type.interest_rate
  end
end
