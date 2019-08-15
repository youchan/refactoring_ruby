# SQL構築コード
# NOTE: assert_valid_keys は active_support のメソッドとして実装されているため、requireしている。
# https://github.com/rails/rails/blob/0b4cfa2ba3e978386240e0e56a409616cc32fd02/activesupport/lib/active_support/core_ext/hash/keys.rb#L77
# require 'active_support/core_ext/hash/keys.rb'

# EXAMPLE: 自前で書くとこんな感じ
#
# module AssertValidKeys
#   def assert_valid_keys(*valid_keys)
#     unknown_keys = keys - [valid_keys].flatten
#     raise(ArgumentError, "Unknown key(s): #{unknown_keys.join(", ")}") if unknown_keys.any?
#   end
# end
# Hash.send(:include, AssertValidKeys)


class Books
  def self.find(selector, hash = {})
    hash.assert_valid_keys :conditions, :joins
    hash[:joins] ||= []
    hash[:conditions] ||= ''

    sql = ['SELECT * FROM books']
    hash[:joins].each do |join_table|
      sql << "LEFT OUTER JOIN #{join_table} ON"
      sql << "books.#{join_table.to_s.chop}_id"
      sql << " = #{join_table}.id"
    end
    sql << "WHERE #{ hash[:conditions] }" unless hash[:conditions].empty?
    sql << 'LIMIT 1' if selector == :first

    connection.find(sql.join(' '))
  end
end

Books.find(:all)
Books.find(:all,   :conditions => "title like '%Voodoo Economics'")
Books.find(:all,   :conditions => "authors.name = 'Jenny James'", :joins =>[:authors])
Books.find(:first, :conditions => "authors.name = 'Jenny James'", :joins =>[:authors])
