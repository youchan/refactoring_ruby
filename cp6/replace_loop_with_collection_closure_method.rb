# 6.11 ループからコレクションクロージャメソッドへ（Replace Loop with Collection Closure Method）

managers = employees.select {|e| e.manager?}

offices = employees.collect {|e| e.office}

manager_offices = employees.select(&:manager?).collect(&:office)
