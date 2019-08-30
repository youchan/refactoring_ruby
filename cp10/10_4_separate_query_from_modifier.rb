def found_miscreant(people)
  people.each do |person|
    if person == "Don"
      send_alert
      return found_person(people)
    end
    if person == "John"
      send_alert
      return found_person(people)
    end
  end
  found_person(people)
end

# 関数はこのようにして呼び出される

def check_security(people)
  found_miscreant(people)
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
