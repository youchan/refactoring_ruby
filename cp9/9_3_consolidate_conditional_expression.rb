# 9.3 条件式の統合（Consolidate Conditional Expression）

def disability_amount
  return 0 if ineligable_for_disability?
end
# compute the disability amount

def ineligable_for_disability?
  @seniority < 2 || @months_disabled > 12 || @is_part_timeend
end
