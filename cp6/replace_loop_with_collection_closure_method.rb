# 6.11 ループからコレクションクロージャメソッドへ（Replace Loop with Collection Closure Method）

managers = []
employees.each do |e|
  managers << e if e.manager?
end
