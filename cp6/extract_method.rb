# 6.1 メソッド抽出（Extract Method）

def print_owing(previous_amount)
  print_banner
  outstanding = calculate_outstanding(outstanding * 1.2)
  print_details outstanding
end

def calculate_outstanding(initial_value)
  @orders.inject(initial_value) { |result, order| result + order.amount }
end

def print_details(outstanding)
  # print details
  puts "name: #{@name}"
  puts "amount: #{outstanding}"
end

def print_banner
  # print banner
  puts "*************************"
  puts "***** Customer Owes *****"
  puts "*************************"
end
