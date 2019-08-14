# 6.14 名前付き引数の導入（Introduce Named Parameter）

class SearchCriteria
  attr_reader :author_id, :publisher_id, :isbn

  def initialize(author_id, publisher_id, isbn)
    @author_id = author_id
    @publisher_id = publisher_id
    @isbn = isbn
  end
end

criteria = SearchCriteria.new(author_id: 5, publisher_id: 8, isbn: "0201485672")
