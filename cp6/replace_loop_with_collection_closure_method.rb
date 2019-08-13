# 6.11 ループからコレクションクロージャメソッドへ（Replace Loop with Collection Closure Method）

managers = employees.select {|e| e.manager?}

offices = employees.collect {|e| e.office}

manager_offices = []
employees.each do |e|
  manager_offices << e.office if e.manager?
end
