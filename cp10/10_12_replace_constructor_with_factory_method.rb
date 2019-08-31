class ProductController
  def create
    @product = if imported
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
