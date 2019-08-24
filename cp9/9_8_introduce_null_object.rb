# 9.8 nullオブジェクトの導入（Introduce Null Object）

class Site
  attr_reader :customer
end

class Customer
  attr_reader :name, :plan, :history
end

class PaymentHistory
  def weeks_delinquent_in_last_year; end
end

class BillingPlan
  attr_reader :basic
end

customer = Site.new.customer
plan = customer ? customer.plan : BillingPlan.basic
customer_name = customer ? customer.name : 'occupant'
weeks_delinquent = customer.nil? ? 0 : customer.history.weeks_delinquent_in_last_years
