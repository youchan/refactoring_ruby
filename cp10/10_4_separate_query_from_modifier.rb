def found_miscreant(people)
  people.each do |person|
    if person == "Don"
      send_alert
      return "Don"
    end
    if person == "John"
      send_alert
      return "John"
    end
  end
  ""
end

# 関数はこのようにして呼び出される

def check_security(people)
  found = found_miscreant(people)
  some_later_code(found)
end
