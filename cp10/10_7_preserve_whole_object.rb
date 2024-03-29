class Room
  def within_plan?(plan)
    plan.within_range?(days_temperature_range)
  end
end

class HeatingPlan
  def within_range?(room_temperature_range)
    @range.includes?(room_temperature_range)
  end
end

class TempRange
  def includes?(temperature_range)
    temperature_range.low >= @range.low && temperature_range.high <= @range.high
  end
end
