# 9.3 条件式の統合（Consolidate Conditional Expression）

def disability_amount
  return 0 if @seniority < 2
  return 0 if @months_disabled > 12
  return 0 if @is_part_time
end
# compute the disability amount
