# 9.6 条件分岐のネストからガード節へ（Replace Nested Conditional with Guard Clauses）

def pay_amount
  if @dead
    result = dead_amount
  else
    if @separated
      result = separated_amount
    else
      if @retired
        result = retired_amount
      else
        result = normal_pay_amount
      end
    end
  end
  result
end
