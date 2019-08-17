# 6.18 動的レセプタから動的メソッド定義へ（Replace Dynamic Receptor with Dynamic Method Definition）

class Person
  def self.attrs_with_empty_predicate(*args)
    attr_accessor *args
    args.each do |attribute|
      define_method "empty_#{attribute}?" do
        self.send(attribute).nil?
      end
    end
  end
  attrs_with_empty_predicate :name, :age
end
