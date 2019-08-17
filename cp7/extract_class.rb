# クラスの抽出

class Person
  attr_reader :name
  attr_accessor :office_area_code
  attr_accessor :office_number

  def initialize
    @office_telephone = TelephoneNumber.new
  end

  def telephone_number
    '(' + office_area_code + ') ' + @office_number
  end

  def office_area_code
    @office_telephone.area_code
  end
end

class TelephoneNumber
  attr_accessor :area_code, :number
end
