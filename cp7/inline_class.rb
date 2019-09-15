class Person
  attr_reader :name

  def initialize
    @office_telephone = TelephoneNumber.new
  end

  def area_code
    @office_telephone.area_code
  end

  def area_code=(arg)
    @office_telephone.area_code = arg
  end

  def number
    @office_telephone.number
  end

  def number=(arg)
    @office_telephone.number = arg
  end

  def telephone_number
    @office_telephone.telephone_number
  end

  def office_telephone
    @office_telephone
  end
end

class TelephoneNumber
  attr_accessor :area_code, :number

  def telephone_number
    '(' + area_code + ') ' + number
  end
end

martin = Person.new
martin.office_telephone.area_code = "781"
