# 9.4 重複する条件分岐の断片の統合（Consolidate Duplicate Conditional Fragments）

if special_deal?
  total = price * 0.95
  send_order
else
  total = price * 0.98
  send_order
end
