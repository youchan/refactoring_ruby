# 9.6 条件分岐のネストからガード節へ（Replace Nested Conditional with Guard Clauses）

def pay_amount
  return dead_amount if @dead
  return separated_amount if @separated
  return retired_amount if @retired
  normal_pay_amount
end
