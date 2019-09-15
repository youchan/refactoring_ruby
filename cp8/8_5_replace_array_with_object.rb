row = Performance.new
row.name = "Liverpool"
row.wins = "15"
name = row.name
wins = row.wins

class Performance
  attr_accessor :name
  attr_writer :wins

  def initialize
    @data = []
  end

  def []=(index, value)
    @data.insert(index, value)
  end

  def [](index)
    @data[index]
  end

  def wins
    @wins.to_i
  end
end
