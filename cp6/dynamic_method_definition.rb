# 6.17 動的メソッド定義（Dynamic Method Definition）

def failure
  self.state = :failure
end

def error
  self.state = :error
end
