class AssemblyLine
  CAR_PER_HOUR = 221
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if 1 <= @speed and @speed <= 4
      success_rate = 1
    elsif 5 <= @speed and @speed <= 8
      success_rate = 0.9
    elsif @speed == 9
      success_rate = 0.8
    elsif @speed == 10
      success_rate = 0.77
    end
    @speed * CAR_PER_HOUR * success_rate
  end

  def working_items_per_minute
    production_rate_per_hour.to_int / 60
  end
end
