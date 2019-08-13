# 6.11 ループからコレクションクロージャメソッドへ（Replace Loop with Collection Closure Method）

managers = employees.select {|e| e.manager?}

offices = []
employees.each {|e| offices << e.office}
