# 6.18 動的レセプタから動的メソッド定義へ（Replace Dynamic Receptor with Dynamic Method Definition）

class Decorator
  def initialize(subject)
    @subject = subject
  end

  def method_missing(sym, *args, &block)
    @subject.send sym, *args, &block
  end
end
