# 9.3 条件式の統合（Consolidate Conditional Expression）

def disability_amount
  return 0 if @seniority < 2 || @months_disabled > 12 || @is_part_timeend
end
# compute the disability amount
