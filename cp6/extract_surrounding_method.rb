# 6.12 サンドイッチメソッドの抽出（Extract Surrounding Method）

class Person
  attr_reader :mother, :children, :name

  def initialize(name, date_of_birth, date_of_death = nil, mother = nil)
    @name, @mother = name, mother
    @date_of_birth, @date_of_death = date_of_birth, date_of_death
    @children = []
    @mother.add_child(self) if @mother
  end

  def add_child(child)
    @children << child
  end

  def number_of_living_descendants
    count_descendants_matching{|decendant| decendant.alive? }
  end

  def number_of_descendants_named(name)
    count_descendants_matching{|decendant| decendant.name == name }
  end

  def count_descendants_matching(&block)
    children.inject(0) do |count, child|
      count += 1 if yield child
      count + child.count_descendants_matchning(&block)
    end
  end

  def alive?
    @date_of_death.nil?
  end
end
