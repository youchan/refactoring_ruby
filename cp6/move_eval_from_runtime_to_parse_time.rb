# 6.20 evalを実行時からパース時へ（Move Eval from Runtime to Parse Time）

class Person
  def self.attr_with_default(options)
    options.each_pair do |attribute, default_value|
      eval "define_method attribute do
         @#{attribute} ||= #{default_value}
      end"
    end
  end

  attr_with_default emails: '[]', employee_number: 'EmployeeNumberGenerator.next'
end
