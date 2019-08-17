# 6.18 動的レセプタから動的メソッド定義へ（Replace Dynamic Receptor with Dynamic Method Definition）

class Person
  attr_accessor :name, :age

  def method_missing(sym, *args, &block)
    empty?(sym.to_s.sub(/^empty_/,"").chomp("?"))
  end

  def empty?(sym)
    self.send(sym).nil?
  end
end
