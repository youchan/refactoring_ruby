class Item
  attr_accessor :base_price, :tax_rate

  def initialize(base_price, tax_rate)
    setup(base_price, tax_rate)
  end

  def setup(base_price, tax_rate)
    @base_price = base_price
    @tax_rate = tax_rate
  end

  def raise_base_price_by(percent)
    base_price = base_price * (1 + percent / 100.0)
  end

  def total
    base_price * (1 + tax_rate)
  end
end

class ImportedItem < Item
  attr_reader :import_duty

  def initialize(base_price, tax_rate, import_duty)
    super(base_price, tax_rate)
    @import_duty = import_duty
  end

  # NOTE: tax_rate に import_duty の値を加えて初期化している
  def tax_rate
    super + import_duty
  end
end
