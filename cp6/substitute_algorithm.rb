# 6.10 アルゴリズム変更（Substitute Algorithm）
#
def found_friends(people)
  people.select { |person| %w[Don John Kent].include? person }
end
