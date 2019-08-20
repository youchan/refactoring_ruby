# 9.6 条件分岐のネストからガード節へ（Replace Nested Conditional with Guard Clauses）

def adjusted_capital
  result = 0.0
  if @capital > 0.0
    if @interest_rate > 0.0 && @duration > 0.0
      result = (@income / @duration) * ADJ_FACTOR
    end
  end
  result
end
