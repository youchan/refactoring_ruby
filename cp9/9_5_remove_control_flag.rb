# 9.5 制御フラグの除去（Remove Control Flag）

def check_security(people)
  found = false
  people.each do |person|
    unless found
      if person == "Don"
        send_alert
        found = true
      end
      if person == "John"
        send_alert
        found = true
      end
    end
  end
end
