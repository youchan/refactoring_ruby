def create_bill(date)
  charge_amount = charge_for(last_bill_date, date)
  add_bill(date, charge_amount)
end

# 上記のような複数のサブクラスに共通するメソッドがある場合、
# そのメソッドを親クラスにコピーし、サブクラスからメソッドを削除する
