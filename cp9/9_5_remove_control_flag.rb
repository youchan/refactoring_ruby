# 9.5 制御フラグの除去（Remove Control Flag）

def check_security(people)
  people.each do |person|
    if person == "Don"
      send_alert
      break
    end
    if person == "John"
      send_alert
      break
    end
  end
end
