class Bid
  include AccountNumberCapture
end

module AccountNumberCapture
  def self.included(klass)
    klass.class_eval do
      before_save :capture_account_number
    end
  end

  def capture_account_number
    self.account_number = buyer.preferred_account_number
  end
end
