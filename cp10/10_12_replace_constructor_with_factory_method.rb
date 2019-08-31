class ProductController
  def create
    @product = Product.create(base_price, imported)
  end
end

class Product
  def self.create(base_price, imported = false)
    if imported
      ImportedProduct.new(base_price)
    else
      if base_price > 1000
        LuxuryProduct.new(base_price)
      else
        Product.new(base_price)
      end
    end
  end
end
