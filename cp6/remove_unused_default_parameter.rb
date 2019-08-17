# 6.16 使われていないデフォルト引数の除去（Remove Unused Default Parameter）

def product_count_items(search_criteria)
  ProductCountItem.find_all_by_criteria(search_criteria)
end
