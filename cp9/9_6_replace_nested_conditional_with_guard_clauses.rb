# 9.6 条件分岐のネストからガード節へ（Replace Nested Conditional with Guard Clauses）

def adjusted_capital
  return 0.0 if @capital <= 0.0
  return 0.0 if @interest_rate <= 0.0 || @duration <= 0.0
  (@income / @duration) * ADJ_FACTOR
end
