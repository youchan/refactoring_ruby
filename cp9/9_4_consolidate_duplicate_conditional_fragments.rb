# 9.4 重複する条件分岐の断片の統合（Consolidate Duplicate Conditional Fragments）

if special_deal?
  total = price * 0.95
else
  total = price * 0.98
end
send_order

# NOTE: 例外処理でも使える
# beginとrescueで同じ処理をしていたら、ensure節で同じコードを呼べば良い
