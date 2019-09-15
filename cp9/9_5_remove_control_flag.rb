# 9.5 制御フラグの除去（Remove Control Flag）

def example(people)
  found = ""
  people.each do |person|
    if found == ""
      if person == "Don"
        send_alert
        found = "Don"
      end
      if person == "John"
        send_alert
        found = "John"
      end
    end
  end
  some_later_code(found)
end

