def send_alert_if_miscreant_in(people)
  send_alert unless found_person(people).empty?
end

# 関数はこのようにして呼び出される

def check_security(people)
  send_alert_if_miscreant_in(people)
  found = found_person(people)
  some_later_code(found)
end

def found_person(people)
  people.each do |person|
    return "Don" if person == "Don"
    return "John" if person == "John"
  end
  ""
end
