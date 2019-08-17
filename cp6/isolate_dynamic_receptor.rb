# 6.19 動的レセプタの分離（Isolate Dynamic Receptor）

class Recorder
  instance_methods.each do |meth|
    undef_method meth unless meth =~ /^(__|inspect)/
  end

  def messages
    @messages ||= []
  end

  def method_missing(sym, *args)
    messages << %w[sym args]
    self
  end
end
