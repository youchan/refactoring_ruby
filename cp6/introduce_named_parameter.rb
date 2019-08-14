# 6.14 名前付き引数の導入（Introduce Named Parameter）

class SearchCriteria
  attr_reader :author_id, :publisher_id, :isbn

  def initialize(params)
    @author_id    = params[:author_id]
    @publisher_id = params[:publisher_id]
    @isbn         = params[:isbn]
  end
end

criteria = SearchCriteria.new(author_id: 5, publisher_id: 8, isbn: "0201485672")
