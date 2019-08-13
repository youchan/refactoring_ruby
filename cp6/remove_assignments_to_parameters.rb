def discount(input_val, quantity, year_to_date)
  result = inputval
  result -= 2 if input_val > 50
  result -= 1 if quantity > 100
  result -= 4 if year_to_date > 10000
  result
end
