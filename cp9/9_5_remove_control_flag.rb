# 9.5 制御フラグの除去（Remove Control Flag）

def check_security(people)
  found = found_miscreant(people)
  some_later_code(found)
end

def found_miscreant(people)
  found = ""
  people.each do |person|
    if found == ""
      if person == "Don"
        send_alert
        return "Don"
      end
      if person == "John"
        send_alert
        found = "John"
      end
    end
  end
  found
end
