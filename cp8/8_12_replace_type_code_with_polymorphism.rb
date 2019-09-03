module MountainBike

  def wheel_circumference
    Math::PI * (@wheel_diameter + @tire_diameter)
  end
end

class RigidMountainBike
  include MountainBike

  def price
    (1 + @commission) * @base_price
  end


  def off_road_ability
    @tire_width * TIRE_WIDTH_FACTOR
  end
end
class FrontSuspensionMountainBike
  include MountainBike

  def price
    (1 + @commission) * @base_price + @front_suspension_price
  end

  def off_road_ability
    @tire_width * TIRE_WIDTH_FACTOR + @front_fork_travel *
        FRONT_SUSPENSION_FACTOR
  end
end
class FullSuspensionMountainBike
  include MountainBike

  def price
    (1 + @commission) * @base_price + @front_suspension_price + @rear_suspension_price
  end

  def off_road_ability
    @tire_width * TIRE_WIDTH_FACTOR + @front_fork_travel *
        FRONT_SUSPENSION_FACTOR + @rear_fork_travel * REAR_SUSPENSION_FACTOR
  end
end


bike = RigidMountainBike.new(type_code: :rigid, tire_width: 2.5)
bike = FrontSuspensionMountainBike.new(type_code: :front_suspension,
                                       tire_width: 2,
                                       front_fork_travel: 3)
